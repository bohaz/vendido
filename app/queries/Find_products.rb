class FindProducts
  attr_reader :products
  def initialize(products = initial_scope)
    @products = products
  end

  def call(params = {})
  scoped = products
  scoped = filter_by_category(scoped, params[:category_id])
  scoped = filter_by_min_price(scoped, params[:min_price])
  end

  private

  def initial_scope
    Product.with_attached_photo
  end

  filter_by_category_id(scoped, category_id)
  return scoped unless category_id

  scoped.where(category_id: category_id)
end

FindProducts.new.call({min_price: 400, max_price: 1000, query_text: 'iPhone'})