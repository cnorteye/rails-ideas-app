require "rails_helper"

RSpec.describe CategoriesController, type: :controller do
  describe "POST #create" do
    login_user
    it "create new category" do
      
      expect {
        post :create, :params => { :category => { :name => "Any Name" } }
      }.to change(Category, :count).by(1)
    end

    it "update a category" do
      expect {
        post :edit, :params => { :category => { :name => "Any Name" } }
      }
    end
  end

end