require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:email) }
    it { should validate_presence_of(:password) }       
    it { should validate_uniqueness_of(:email) }

    it 'requires that an email is valid' do
      user1 = build(:user, email: 'email.com')
      user2 = build(:user, email: 'email@email')
      user3 = build(:user, email: 'email')

      expect(user1.valid?).to equal(false)
      expect(user1.errors.full_messages).to eq([
        "Email is invalid"
      ])
      expect(user2.valid?).to equal(false)
      expect(user3.valid?).to equal(false)
    end
  end

  describe 'on save' do
    it 'hashes a password' do
      user = build(:user)
      user.save

      expect(user.password_digest).not_to equal(user.password)
    end
  end

  describe 'relationships' do
    it { should have_many(:useringredients) }
    it { should have_many(:ingredients).through(:useringredients) }
    it { should have_many(:userproducts) }
    it { should have_many(:products).through(:userproducts) }
  end
end
