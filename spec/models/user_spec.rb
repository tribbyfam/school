require 'rails_helper'

RSpec.describe User, type: :model do
  describe "creation" do
    before do
      @user = User.create(email: "test@test.com", password: "123123", password_confirmation: "123123", first_name: "John", last_name: "Snow")
    end
    it "can be created" do  
      expect(@user).to be_valid
    end
    it "cannot be created without first name and last name" do
      @user.first_name = nil
      @user.last_name = nil
      expect(@user).to_not be_valid
    end
  end
end
