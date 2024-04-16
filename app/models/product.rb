class Product < ApplicationRecord
  has_one_attached :photo
  validates :title, :description, :price, presence: true
  validates :price, numericality: { greater_than_or_equal_to: 0 }
  
  belongs_to :category
end
