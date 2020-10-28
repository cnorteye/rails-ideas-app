require 'rails_helper'

RSpec.describe CategoriesController, type: :controller do

  describe "POST #create" do
    context "with valid attributes" do
      it "create new category" do
        @category = {name: "ministy"}
        post :create, params: {category: @category.as_json}
        expect(Category.count).to eq(1)
      end
    end
  end
end