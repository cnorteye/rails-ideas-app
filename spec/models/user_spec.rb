require "rails_helper"

RSpec.describe User, type: :model do
  
  before(:all) do
    @user1 = User.create(email: Faker::Internet.email, password: Faker::Internet.password)
  end
  
  it "is valid with valid attributes" do
    expect(@user1).to be_valid
  end
  
  it "is not valid without a password" do 
    user2 = User.create(email: Faker::Internet.email, password: nil)
    expect(user2).to_not be_valid
  end
  
  it "is not valid without an email" do
    user3 = User.create(email: nil, password: Faker::Internet.password)
    expect(user3).to_not be_valid
  end
end