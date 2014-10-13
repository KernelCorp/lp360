require 'rails_helper'

RSpec.describe Product, type: :model do

  describe '#get_parent_options' do
    let(:proto1)   {FactoryGirl.create :prototype, name: 'proto1', opts: ['opt1']}
    let(:proto2)   {FactoryGirl.create :prototype, name: 'proto2', opts: ['opt2', 'opt3']}
    let(:category) {FactoryGirl.create :category, name: 'cat1', prototype: proto1}
    let(:product)  {
      FactoryGirl.create :product, name: 'prod1', prototype: proto2, category: category,
                         options: [FactoryGirl.build(:option, name: 'opt3')]
    }

    subject{product.options.map &:name }

    it 'builds options from prototype' do
      expect(subject).to include('opt2')
    end
    it 'builds options from category' do
      expect(subject).to include('opt1')
    end
    it 'does not duplicate options' do
      expect(subject.count).to eq(3)
    end
  end

end