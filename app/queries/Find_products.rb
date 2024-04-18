class FindProducts
  attr_reader :products
  def initialize(products = initial_scope)
    @products = products
  end

  def call(params = {})
  scoped = products
  scoped = filter_by_category(scoped, params[:category_id])
  scoped = filter_by_min_price(scoped, params[:min_price])
  scoped = filter_by_max_price(scoped, params[:max_price])
  scoped = filter_by_query_text(scoped, params[:query_text])
  end

  private

  def initial_scope
    Product.with_attached_photo
  end

  def filter_by_category_id(scoped, category_id)
  return scoped unless category_id

  scoped.where(category_id: category_id)
  end

  def filter_by_min_price(scoped, min_price)
    return scoped unless min_price
  
    scoped.where("price >= ?", params[:min_price])
  end

  def filter_by_max_price(scoped, max_price)
    return scoped unless max_price
  
    scoped.where("price <= ?", params[:max_price])
  end

  def filter_by_query_text(scoped, query_text)
    return scoped unless query_text
  
    scoped.search_full_text(params[:query_text])
  end

end

FindProducts.new.call({min_price: 400, max_price: 1000, query_text: 'iPhone'})