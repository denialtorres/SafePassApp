require "rails_helper"

RSpec.describe User, type: :model do
  it "can be instantiated" do
    user = build(:user)
    expect(user).to be_an_instance_of User
  end

  it "has a valid factory" do
    user = build(:user)
    expect(user).to be_valid
  end

  context "email format validation" do
    it "has a valid email format" do
      user = build(:user, email: "valid@email.com")
      expect(user).to be_valid
    end

    it "has an invalid mail format" do
      user = build(:user, email: "bademail")
      expect(user).not_to be_valid
      expect(user.errors[:email]).to include("is invalid")
    end
  end

  context "email uniqueness" do
    it "already exists" do
      user = create(:user)
      new_user = build(:user, email: user.email)
      expect(new_user).not_to be_valid
      expect(new_user.errors[:email]).to include("has already been taken")
    end
  end
end
