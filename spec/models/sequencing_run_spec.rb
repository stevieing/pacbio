require 'rails_helper'

RSpec.describe SequencingRun, type: :model do
  it 'must have a uuid' do
    expect(build(:sequencing_run).uuid).to be_present
  end

  it 'must have a dna template prep kit box barcode' do
    expect(build(:sequencing_run, dna_template_prep_kit_box_barcode: nil)).to_not be_valid
  end

  it 'must have a binding kit box barcode' do
    expect(build(:sequencing_run, binding_kit_box_barcode: nil)).to_not be_valid
  end

  it 'must have a sequencing kit box barcode' do
    expect(build(:sequencing_run, sequencing_kit_box_barcode: nil)).to_not be_valid
  end

end
