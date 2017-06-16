class Ingredient < ApplicationRecord
  has_many :useringredients, dependent: :destroy
  has_many :users, through: :useringredients
  has_many :productingredients, dependent: :destroy
  has_many :products, through: :productingredients
  validates :name, presence: true

  def destroy_if_orphaned
    if self.users.count == 0 || self.products.count == 0
      self.destroy
    end
  end
end
