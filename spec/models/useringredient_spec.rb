require 'rails_helper'

RSpec.describe Useringredient, type: :model do
  describe 'relationships' do
    it { should belong_to(:user) }
    it { should belong_to(:ingredient) }
  end
end
