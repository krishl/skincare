require 'rails_helper'

RSpec.describe Userproduct, type: :model do
  describe 'relationships' do
    it { should belong_to(:user) }
    it { should belong_to(:product) }
  end

  describe 'validations' do
    it 'requires a user upon creation' do
    userproduct = build(:userproduct, user: nil, product: nil)
    
    expect(userproduct.valid?).to eq(false)
    expect(userproduct.errors.full_messages).to eq([
      "User must exist"
    ])
    end
  end
end
