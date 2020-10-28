require 'rails_helper'

RSpec.describe Category, type: :model do
  before(:all) do
    @category1 = Category.create(name: "ministry")
    @category2 = Category.create(name: "abc")
  end

  it "is valid with valid attributes" do
    expect(@category1).to be_valid
  end

  it "is not valid with valid attributes" do
    expect(@category2).not_to be_valid
  end

  it "empty category name should not work" do
    @category3 = Category.create(name: "")
    expect(@category3).not_to be_valid
  end
end