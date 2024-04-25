# frozen_string_literal: true

class CategoryComponent < ViewComponent::Base
  def initialize(category: nil)
    @category = category
  end

  def title
    t('.all')
  end

  def link
    @category ? products_path(category_id: @category.id) : products_path
  end

  def classes
    "bg-white text-gray-600 px-4 py-2 rounded-2xl drop-shadow-sm hover:bg-gray-300"
  end

end
