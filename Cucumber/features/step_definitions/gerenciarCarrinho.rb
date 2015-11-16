# encoding: utf-8


Dado(/^que eu esteja no site "([^"]*)"$/) do |page|
  @home_page = HomePage.new(page)
  @home_page.acessar_pagina
end

Quando(/^eu filtrar por "([^"]*)"$/) do |termo|
  @home_page.preencher_busca(termo)
end

Quando(/^clicar no botão de buscar$/) do
  @home_page.buscar
end

Então(/^verei os resultados da busca para "([^"]*)"$/) do |termo|
  @product_list = ProductsListPage.new
  @product_list.resultado_termo(termo)
end

Quando(/^eu clicar em um dos resultados$/) do
  @product_list.clicar_produto
end

Então(/^verei a página do produto$/) do
  @product_page = ProductPage.new
  @product_page.produto
end

Quando(/^eu estiver na página do produto$/) do
  @product_page.produto
end

Quando(/^clicar para adicionar ao carrinho$/) do
  @product_page.adicionar_carrinho
end

Quando(/^clicar para visualizar o carrinho$/) do
  @product_page.carrinho
end

Então(/^verei o produto no carrinho adicionado com sucesso$/) do
  @cart_page = CartPage.new
  @cart_page.find_item  
end


Quando(/^eu abrir a página de login$/) do
  @login_page = LoginPage.new
  @login_page.acessar_pagina
end

Quando(/^preencher os campos login "([^"]*)" e senha "([^"]*)"$/) do |login, senha|
  @login_page.logar(login, senha)
end

Então(/^verei o ícone de usuário logado com sucesso$/) do
  @login_page.usuario_logado
end
