class Product < ApplicationRecord
  has_many :ingredients
  has_many :userproducts
  has_many :users, through: :userproducts
end
