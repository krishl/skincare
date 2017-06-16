require 'rails_helper'

RSpec.describe Userproduct, type: :model do
  describe 'relationships' do
    it { should belong_to(:user) }
    it { should belong_to(:product) }
  end
end
