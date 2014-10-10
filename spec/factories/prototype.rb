FactoryGirl.define do

  factory :prototype, class: 'Prototype' do
    sequence(:name) { |n| "prototype-#{n}" }
    sequence(:opts) { |n| ["opt-#{n}"] }
  end

  # factory :prototype_other_opts, class: 'Prototype' do
  #   name 'prototype_other'
  #   opts ['opt3', 'opt4']
  # end
  #
  # factory :prototype_empty, class: 'Prototype' do
  #   name 'prototype_empty'
  # end
  #
  # factory :prototype_with_parent, class: 'Prototype' do
  #   name 'prototype_with_parent'
  #   opts ['opt1', 'opt2']
  #   parent FactoryGirl.create(:prototype_other_opts)
  # end
  
end