# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Submission, type: :model do
  it 'must have a sequencing machine' do
    expect(build(:submission, sequencing_machine: nil)).to_not be_valid
  end

  it 'must have a sequencing type' do
    expect(build(:submission, sequencing_type: nil)).to_not be_valid
  end

  it 'must have an insert size which is a valid number' do
    expect(build(:submission, insert_size: nil)).to_not be_valid
    expect(build(:submission, insert_size: 'one')).to_not be_valid
  end

  it 'must have a user' do
    expect(build(:submission, user: nil)).to_not be_valid
  end

  it 'can have many samples' do
    expect(create(:submission, samples: create_list(:sample, 5)).samples.count).to eq(5)
  end
end
