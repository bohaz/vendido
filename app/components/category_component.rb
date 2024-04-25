# frozen_string_literal: true

class CategoryComponent < ViewComponent::Base
  def initialize(category: nil)
    @category = category
  end

end
