# frozen_string_literal: true

# The whole point of what we are doing
# Step 16
# Contains or pulls in all of the information necessary for the spreadsheet to upload
# to the sequencing machine
class SequencingRun < ApplicationRecord
  include Uuidable

  validates :dna_template_prep_kit_box_barcode,
            :binding_kit_box_barcode, :sequencing_kit_box_barcode, presence: true
end
