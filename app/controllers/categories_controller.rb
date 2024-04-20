class CategoriesController < ApplicationController
  before_action :authorize! 
  def index
    @categories = Category.all.order(name: :asc)
  end

  def new
    @category = Category.new
  end

  def edit
    @category = Category.find(params[:id])
  end

  def create
    @category = Category.new(category_params)

    if @category.save
      redirect_to categories_url, notice: t('.created') 
    else
      render :new, status: :unprocessable_entity 
    end
  end
 
  def update
    @category = Category.find(params[:id])
    if @category.update(category_params)
      redirect_to categories_url, notice:  t('.updated')
    else
      render :edit, status: :unprocessable_entity 
    end
  end

  def destroy
    @category = Category.find(params[:id])
    @category.destroy
     redirect_to categories_url, notice:  t('.destroyed') 
    end
  end

  private

    def set_category
      @category = Category.find(params[:id])
    end

    def category_params
      params.require(:category).permit(:name, :string)
    end
