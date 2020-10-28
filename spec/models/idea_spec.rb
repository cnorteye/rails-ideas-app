require 'rails_helper'

RSpec.describe Idea, type: :model do
  
    before(:all) do
        @user = User.create(email: Faker::Internet.email, password: "testuser")
        @category = Category.create(name: "ministry")
    end

  it "user is valid with no category" do
    expect(@user).to be_truthy
  end

  it "is valid" do
    idea = Idea.create(name:"check", content: Faker::Name.name, category_id: @category.id, user_id: @user.id)
    expect(idea).to be_valid
  end

  it "with only name not valid" do
    idea = Idea.create(name:"check", content: "", category_id: "", user_id: "")
    expect(idea).to_not be_valid
  end

  it "with only content not valid" do
    idea = Idea.create(name:"", content: Faker::Name.name, category_id: "", user_id: "")
    expect(idea).to_not be_valid
  end

  it "with only category not valid" do
    idea = Idea.create(name:"", content: "", category_id: @category.id, user_id: "")
    expect(idea).to_not be_valid
  end

  it "with only user not valid" do
    idea = Idea.create(name:"", content: "", category_id: "", user_id: @user.id)
    expect(idea).to_not be_valid
  end

  it "without content & category not valid" do
    idea = Idea.create(name:"check", content: "", category_id: "", user_id: @user.id)
    expect(idea).to_not be_valid
  end

  it "without content & name not valid" do
    idea = Idea.create(name:"check", content: Faker::Name.name, category_id: @category.id, user_id: @user.id)
    expect(idea).to be_valid
  end

  it "without content & user not valid" do
    idea = Idea.create(name:"check", content: Faker::Name.name, category_id: @category.id, user_id: @user.id)
    expect(idea).to be_valid
  end

  it "without name & category not valid" do
    idea = Idea.create(name:"", content: Faker::Name.name, category_id: "", user_id: @user.id)
    expect(idea).to_not be_valid
  end

  it "without user & category not valid" do
    idea = Idea.create(name:"check", content: Faker::Name.name, category_id: "", user_id: "")
    expect(idea).to_not be_valid
  end


  it "without user & name not valid" do
    idea = Idea.create(name:"check", content: Faker::Name.name, category_id: @category.id, user_id: @user.id)
    expect(idea).to be_valid
  end

  it "without name not valid" do
    idea = Idea.create(name:"", content: Faker::Name.name, category_id: @category.id, user_id: @user.id)
    expect(idea).to_not be_valid
  end

  it "without content is valid" do
    idea = Idea.create(name:"check", content: "", category_id: @category.id, user_id: @user.id)
    expect(idea).to be_valid
  end

  it "without category not valid" do
    idea = Idea.create(name:"check", content: Faker::Name.name, category_id: "", user_id: @user.id)
    expect(idea).to_not be_valid
  end

  it "without user not valid" do
    idea = Idea.create(name:"check", content: Faker::Name.name, category_id: @category.id, user_id: "")
    expect(idea).to_not be_valid
  end

  it "all empty fields not valid" do
    idea = Idea.create(name:"", content:"", category_id: "", user_id: "")
    expect(idea).to_not be_valid
  end

end