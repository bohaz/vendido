class CategoriesController < ApplicationController
  before_action :set_category, only: %i[ show edit update destroy ]

  def index
    @categories = Category.all
  end

  def new
    @category = Category.new
  end

  def edit
    @category
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
    if @category.update(category_params)
      redirect_to categories_url, notice:  t('.updated')
    else
      render :edit, status: :unprocessable_entity 
    end
  end

  def destroy
    @category.destroy

    respond_to do |format|
      format.html { redirect_to categories_url, notice:  t('.destroyed') }
    end
  end

  private

    def set_category
      @category = Category.find(params[:id])
    end

    def category_params
      params.require(:category).permit(:name, :string)
    end
end
