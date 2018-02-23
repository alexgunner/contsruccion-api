class ProductInStorehouse < ApplicationRecord
  belongs_to :product
  belongs_to :storehouse
end
