class Useringredient < ApplicationRecord
  belongs_to :user
  belongs_to :ingredient, optional: true
  after_destroy :check_user, :check_ingredient

  def check_user
    user.destroy_if_orphaned if user
  end

  def check_ingredient
    ingredient.destroy_if_orphaned if ingredient
  end
end
