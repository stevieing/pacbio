require 'rails_helper'

RSpec.describe Well, type: :model do
  it 'must have a position' do
    expect(build(:well, position: nil)).to_not be_valid
  end

  it 'can have a sample name' do
    sample = build(:sample)
    expect(build(:well, sample: sample).sample_name).to eq(sample.name)
  end

  it 'must have a uuid' do
    expect(build(:well).uuid).to be_present
  end
end
