# frozen_string_literal: true

require 'rails_helper'

RSpec.describe SequencingMetadata, type: :model do
  it 'must have a sample' do
    expect(build(:sequencing_metadata, sample: nil)).to_not be_valid
  end

  it 'must have a collection time' do
    expect(build(:sequencing_metadata, collection_time: nil)).to_not be_valid
    expect(build(:sequencing_metadata, collection_time: 'one')).to_not be_valid
  end

  it 'must have an immobilization time' do
    expect(build(:sequencing_metadata, immobilization_time: nil)).to_not be_valid
    expect(build(:sequencing_metadata, immobilization_time: 'one')).to_not be_valid
  end
end
