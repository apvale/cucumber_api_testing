class HomePage

  include Capybara::DSL

  def initialize(page)
    @page = page
  end

  def acessar_pagina
    visit @page
    Capybara.page.driver.browser.manage.window.maximize
    if page.has_css? ".mfp-content"
      page.find('.newsletter-promo-modal-close').click
    end
  end

  def preencher_busca(termo)
    fill_in 'ft', with: termo

  end

  def buscar
    find_button('Procurar').click
  end

end

