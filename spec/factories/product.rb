FactoryGirl.define do

  factory :product, class: 'Product' do
    sequence(:name) { |n| "product-#{n}" }
    description 'description'
    video 'video'
  end

end