# frozen_string_literal: true

require 'rails_helper'

RSpec.describe LibraryTube, type: :model do
  it 'must have a uuid' do
    expect(build(:library_tube).uuid).to be_present
  end

  it 'must have a sample' do
    expect(build(:library_tube, sample: nil)).to_not be_valid
  end

  it 'name must be the same as the sample name' do
    sample = build(:sample)
    expect(build(:library_tube, sample: sample).name).to eq(sample.name)
  end
end
