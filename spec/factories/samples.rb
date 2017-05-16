FactoryGirl.define do
  factory :sample do
    sequence(:name) { |n| "DN123456-A#{n}" }
    well

  end
end