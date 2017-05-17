# frozen_string_literal: true

FactoryGirl.define do
  factory :sequencing_metadata, class: 'SequencingMetadata' do
    sample
    collection_time 120
    immobilization_time 60
  end
end
