require 'rails_helper'

RSpec.describe ProductsController do

  describe "GET show" do
    it 'assigns the requested product as @product' do
      @product = FactoryGirl.create :product
      get :show, {:id => @product.to_param}
      expect(assigns(:product)).to eq(@product)
    end

  end

end
