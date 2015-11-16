class CartPage

  include Capybara::DSL

  def find_item
      page.has_css?('.my-cart-header-items')
  end

end

