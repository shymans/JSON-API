module LiquorHelper
  def parse_page(page)
    products_json = open("http://www.lcboapi.com/products?page=#{page}").read
    @products = JSON.parse(products_json)
  end
end
