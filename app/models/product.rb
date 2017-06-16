class Product < ApplicationRecord
  has_many :userproducts, dependent: :destroy
  has_many :users, through: :userproducts
  has_many :productingredients, dependent: :destroy
  has_many :ingredients, through: :productingredients
  accepts_nested_attributes_for :ingredients, :reject_if => proc {|attributes|
    attributes.all? {|k,v| v.blank?}}, allow_destroy: true
  validates :name, presence: true

  def destroy_if_orphaned
    if self.users.count == 0 || self.ingredients.count == 0
      self.destroy
    end
  end
end
