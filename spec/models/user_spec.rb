require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'validations' do
    it 'requires an email and password upon creation' do
    user = build(:user, email: nil, password: nil)
    expect(user.valid?).to equal(false)
    expect(user.errors.full_messages).to eq([
      "Password can't be blank", 
      "Email can't be blank"
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

    it 'requires that an email is valid'
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
