class Product < ApplicationRecord
  has_many :ingredients
  has_many :userproduct
  has_many :users, through: :userproduct
end
