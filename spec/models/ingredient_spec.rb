require 'rails_helper'

RSpec.describe Ingredient, type: :model do
  describe 'relationships' do
    it { should have_many(:useringredients) }
    it { should have_many(:users).through(:useringredients) }
    it { should belong_to(:product) }
  end
end
