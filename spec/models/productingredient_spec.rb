require 'rails_helper'

RSpec.describe Productingredient, type: :model do
  describe 'relationships' do
    it { should belong_to(:product) }
    it { should belong_to(:ingredient) }
  end
end
