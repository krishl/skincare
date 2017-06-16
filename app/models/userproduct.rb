class Userproduct < ApplicationRecord
  belongs_to :user
  belongs_to :product, optional: true
  after_destroy :check_product, :check_user

  def check_user
    user.destroy_if_orphaned if user
  end

  def check_product
    product.destroy_if_orphaned if product
  end
end
