# frozen_string_literal: true

# The whole point of what we are doing
# Step 16
# Contains or pulls in all of the information necessary for the spreadsheet to upload
# to the sequencing machine
class SequencingRun < ApplicationRecord
  include Uuidable

  has_many :samples

  validates_presence_of :dna_template_prep_kit_box_barcode, :binding_kit_box_barcode, 
                        :sequencing_kit_box_barcode, :samples

  validate :check_number_of_samples

private

  def check_number_of_samples
    return if samples.nil?
    if samples.empty?
      errors.add(:samples, "must not be empty.")
    end
  end
end
