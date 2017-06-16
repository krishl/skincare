class Product < ApplicationRecord
  has_many :userproducts
  has_many :users, through: :userproducts
  has_many :productingredients
  has_many :ingredients, through: :productingredients
end
