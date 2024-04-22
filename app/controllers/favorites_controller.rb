class FavoritesController < ApplicationController

  def create
   Favorite.create(product: product, user: Current.user)
    redirect_to product_path(product)
  end 

  def destroy
    product.favorites.find_by(user: Current.user).destroy
    redirect_to product_path(product), status: :see_other
  end

  private

  def product
    @product ||= Product.find(params[:product_id])
  end
end