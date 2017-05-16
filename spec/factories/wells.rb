FactoryGirl.define do
  factory :well do
    sequence(:position) { |n| "A#{n}" }
    
  end
end
