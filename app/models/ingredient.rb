class Ingredient < ApplicationRecord
  has_many :useringredients
  has_many :users, through: :useringredients
  has_many :productingredients
  has_many :products, through: :productingredients
end
