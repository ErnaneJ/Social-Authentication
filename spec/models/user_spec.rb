require 'rails_helper'

RSpec.describe User, type: :model do
  context 'Checking if the user is'  do
    it 'valid' do
      user = User.new(email: "example@example.com", password: "123456")
      expect(user).to be_valid
    end
    it 'invalid' do
      user = User.new()
      expect(user).to_not be_valid
    end
    it 'invalid due to not entering email' do
      user = User.new(password: "123456")
      user.valid?
      expect(user.errors[:email]).to include("can't be blank")
    end
    it 'invalid due to not entering email password' do
      user = User.new(email: "example@example.com")
      user.valid?
      expect(user.errors[:password]).to include("can't be blank")
    end
    it 'invalid due to not entering a valid email' do
      user = User.new(email: "invalidEmail", password: "123456")
      user.valid?
      expect(user.errors[:email]).to include("is invalid")
    end
  end
end
