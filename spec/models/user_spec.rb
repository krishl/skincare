require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'validations' do
    it 'requires an email and password upon creation' do
    user = build(:user, email: nil, password: nil)
    expect(user.valid?).to equal(false)
    expect(user.errors.full_messages).to eq([
      "Password can't be blank", 
      "Email can't be blank",
      "Email is invalid"
    ])
  end
  
    it 'requires that an email is unique' do
      create(:user)
      user = build(:user)

      expect(user.valid?).to equal(false)
      expect(user.errors.full_messages).to eq([
        "Email has already been taken"
      ])
    end

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
    it 'hashes a password'
  end

  describe 'relationships' do
    it 'has many UserIngredient'
    it 'has many Ingredients through UserIngredient'
    it 'has many UserProduct'
    it 'has many Products through UserProduct'
  end
end
