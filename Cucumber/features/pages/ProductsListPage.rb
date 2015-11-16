
class ProductsListPage

  include Capybara::DSL


  def resultado_termo(termo)
    page.has_css?('search-title')
  end

  def clicar_produto
    find(:xpath, "//div[@id='category-products']/section/ul/li[1]").click
  end

end
