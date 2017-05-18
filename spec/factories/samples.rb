# frozen_string_literal: true

FactoryGirl.define do
  factory :sample do
    sequence(:name) { |n| "DN123456-A#{n}" }
    well

    factory :sample_with_sequencing_metadata do
      after(:build) do |sample|
        build(:sequencing_metadata, sample: sample)
      end
    end
  end
end
