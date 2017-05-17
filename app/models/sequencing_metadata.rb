# frozen_string_literal: true

# Attached to a sample and contains the information each sample needs for the
# spreadsheet to upload to the sequencing machine
class SequencingMetadata < ApplicationRecord
  belongs_to :sample
  validates :collection_time, :immobilization_time, presence: true
  validates :collection_time, :immobilization_time, numericality: true
end
