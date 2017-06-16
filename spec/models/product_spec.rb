require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'relationships' do
    it { should have_many(:userproducts) }
    it { should have_many(:users).through(:userproducts) }
    it { should have_many(:ingredients) }
  end
end
