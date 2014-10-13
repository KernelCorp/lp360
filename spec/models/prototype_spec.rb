require 'rails_helper'

RSpec.describe Prototype, type: :model do

  describe '#transfer_options' do
    subject{prototype.transfer_options}

    let(:category) {FactoryGirl.create :category}
    let(:product) {FactoryGirl.create :product, category: category}

    context 'prototype and product have direct relation' do
      let(:prototype) {FactoryGirl.build :prototype, products: [product], opts: ['new']}

      it {expect{subject}.to change{product.options.count}.from(0).to(1) }
    end

    context 'prototype and product have relation through category' do
      let(:prototype) {FactoryGirl.build :prototype, categories: [category], opts: ['new']}

      it {expect{subject}.to change{product.options.count}.from(0).to(1) }
    end

    context 'prototype and product have no relation' do
      let(:prototype) {FactoryGirl.build :prototype, opts: ['new']}

      it {expect{subject}.to_not change{product.options.count} }
    end

  end

end