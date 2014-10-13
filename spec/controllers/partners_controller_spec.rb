require 'rails_helper'

RSpec.describe PartnersController do

  describe "GET index" do
    it 'assigns partners as @parnters' do
      @partner = FactoryGirl.create :partner
      get :index, {}
      expect(assigns(:partners)).to eq([@partner])
    end

  end

end
