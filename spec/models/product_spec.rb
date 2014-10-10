require 'rails_helper'

RSpec.describe Product, type: :model do

  describe "it inherits parent options" do
    it 'inherits options on create' do
      proto1 = FactoryGirl.create :prototype, name: 'proto1', opts: ['opt1']
      proto2  = FactoryGirl.create :prototype, name: 'proto2', opts: ['opt2']
      category = FactoryGirl.create :category, name: 'cat1', prototype: proto1
      product = FactoryGirl.create :product, name: 'prod1', prototype: proto2, category: category

      result = []
      product.options.each do |option|
        result << option.name
      end
      expect(result).to eq(['opt2', 'opt1'])
    end
  end

end