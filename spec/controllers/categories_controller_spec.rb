require 'rails_helper'

RSpec.describe CategoriesController do

  describe "GET index" do
    it 'assigns categories as @categories' do
      @cat = FactoryGirl.create :category
      get :index, {}
      expect(assigns(:categories)).to eq([@cat])
    end

  end

  describe "GET show" do
    it 'assigns the requested category as @category' do
      @cat = FactoryGirl.create :category
      get :show, {:id => @cat.to_param}
      expect(assigns(:category)).to eq(@cat)
    end

  end

end
