# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Sample, type: :model do
  it 'must have a name' do
    expect(build(:sample, name: nil)).to_not be_valid
  end

  it 'can have some metadata' do
    metadata = build(:sequencing_metadata)
    expect(build(:sample, sequencing_metadata: metadata).sequencing_metadata).to eq(metadata)
  end

  it 'must have some metadata if it has a sequencing run' do
    expect(build(:sample, sequencing_run: build(:sequencing_run, number_of_samples: 1))).to_not be_valid
  end
end
