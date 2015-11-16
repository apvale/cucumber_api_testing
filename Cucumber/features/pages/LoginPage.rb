class LoginPage 

  include Capybara::DSL

  def acessar_pagina
    visit 'https://www2.walmart.com.br/minhaconta'
    #sleep 10
  end

  def logar(user, password)
    within_frame('iframeLogin') do
      fill_in 'signinField', with: user
      fill_in 'password', with: password
      click_button 'signinButtonSend'
    end
  end
  
  def usuario_logado
    find '.profile'
    #page.has_css?('.profile')
  end



end