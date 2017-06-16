class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
  has_many :useringredients, dependent: :destroy
  has_many :ingredients, through: :useringredients
  has_many :userproducts, dependent: :destroy
  has_many :products, through: :userproducts

  def destroy_if_orphaned
    if self.products.count == 0 || self.ingredients.count == 0
      self.destroy
    end
  end
end
