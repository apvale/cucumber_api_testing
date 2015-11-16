# encoding: utf-8

Dado(/^que eu defina uma url "([^"]*)" e um email "([^"]*)" para o site$/) do |url, email|
  @url = url
  @email = email
end

Quando(/^realizar um POST$/) do
  @api = API.new
  @site_response = @api.criar_site({url: @url, email: @email})
end

Então(/^é retornado com sucesso o site criado$/) do
  @site_url = @site_response["siteResponse"]["site"]["url"]
  expect(@site_url).to eq(@url)
end

Quando(/^eu informar uma nova url "([^"]*)"$/) do |nova_url|
  @nova_url = nova_url
end

Quando(/^realizar um UPDATE apenas da url$/) do
  @public_key = @site_response["siteResponse"]["site"]["publicKey"]
  @site_response = @api.atualizar_site(@public_key, {url: @nova_url})
end

Então(/^é retornado com sucesso a nova url atualizada$/) do
  @nova_url_response = @site_response["siteResponse"]["site"]["url"]
  expect(@nova_url_response).to eq(@nova_url)
end

Quando(/^eu informar um novo email "([^"]*)"$/) do |novo_email|
  @novo_email = novo_email
end

Quando(/^realizar um UPDATE apenas do email$/) do
  @site_response = @api.atualizar_site(@public_key, {email: @novo_email})
end


Então(/^é retornado com sucesso o novo email atualizado$/) do
  @novo_email_response = @site_response["siteResponse"]["site"]["email"]
  expect(@novo_email_response).to eq(@novo_email)
end




