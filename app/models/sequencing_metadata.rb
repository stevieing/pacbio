class SequencingMetadata < ApplicationRecord

  belongs_to :sample
  validates_presence_of :collection_time, :immobilization_time
  validates_numericality_of :collection_time, :immobilization_time
end
