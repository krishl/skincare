class Productingredient < ApplicationRecord
  belongs_to :product, optional: true
  belongs_to :ingredient, optional: true
  after_destroy :check_product, :check_ingredient

  def check_product
    product.destroy_if_orphaned if product
  end

  def check_ingredient
    ingredient.destroy_if_orphaned if ingredient
  end
end
