require 'rails_helper'

RSpec.describe NewsController, :type => :controller do

  let(:news) {create :news}

  describe "GET index" do
    subject{get :index}
    it "returns http success" do
      subject
      expect(response).to be_success
    end
    it 'assigns news as @news' do
      subject
      expect(assigns(:news)).to eq([news])
    end
  end

end
