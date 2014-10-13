require 'rails_helper'

RSpec.describe PagesController do

  describe "GET show" do
    it 'page renders if exists' do
      @page = FactoryGirl.create :page, name: 'test'
      get :show, {id: 'test'}
      expect(response.status).to eq(200)
    end

  end

end
