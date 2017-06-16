class Product < ApplicationRecord
  has_many :userproducts, dependent: :destroy
  has_many :users, through: :userproducts
  has_many :productingredients, dependent: :destroy
  has_many :ingredients, through: :productingredients
  validates :name, presence: true

  def destroy_if_orphaned
    if self.users.count == 0 || self.ingredients.count == 0
      self.destroy
    end
  end
end
