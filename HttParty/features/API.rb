require 'httparty'

class API

  def initialize
    @url = 'http://dev.mollom.com/v1/site'
  end

  def criar_site (parametros)
    HTTParty.post(@url, body: parametros, headers: { 'Content-Type' => 'application/json' })
  end

  def get_site(public_key)
    HTTParty.get("#{@url}/#{public_key}")
  end

  def atualizar_site(public_key, parametros)
    HTTParty.post("#{@url}/#{public_key}", body: parametros, headers: { 'Content-Type' => 'application/json' })
  end
end