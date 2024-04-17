class Product < ApplicationRecord
  include PgSearch::Model
  pg_search_scope :search_full_text, against: {
    title: "A",
    description: "B"
  }

  has_one_attached :photo
  validates :title, :description, :price, presence: true
  validates :price, numericality: { greater_than_or_equal_to: 0 }
  
  belongs_to :category
end
