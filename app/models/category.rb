class Category < ApplicationRecord
  validates :name, presence: true

  has_many :post_category_ships, dependent: :delete_all
  has_many :posts, through: :post_category_ships
end
