# frozen_string_literal: true

FactoryGirl.define do
  factory :submission do
    sequencing_type 'Magbead'
    insert_size 1500
    user
  end
end
