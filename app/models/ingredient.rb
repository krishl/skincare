class Ingredient < ApplicationRecord
  belongs_to :product
  has_many :useringredients
  has_many :users, through: :useringredients
end
