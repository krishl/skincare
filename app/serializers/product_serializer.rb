class ProductSerializer < ActiveModel::Serializer  
  attributes :name, :brand
  has_many :ingredients
end  