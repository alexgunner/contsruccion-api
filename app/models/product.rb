class Product < ApplicationRecord
  belongs_to :provider
  belongs_to :manufacturer
  belongs_to :category
  belongs_to :subcategory
  has_many :carts
  has_many :product_in_storehouses
end
