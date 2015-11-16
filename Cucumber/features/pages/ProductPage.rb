
class ProductPage

  include Capybara::DSL

  def produto
    page.has_css?('icon-description')
  end

  def adicionar_carrinho  
    click_button('Adicionar ao carrinho')
    #click_button('Continuar')
  end

  def carrinho
    find('.cart-link').click
  end



end
