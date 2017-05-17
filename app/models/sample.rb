# frozen_string_literal: true

# This is a temporary object
# Samples will more than likely come from the Sequencscape API
class Sample < ApplicationRecord
  belongs_to :well, optional: true
  belongs_to :library_tube, optional: true
  belongs_to :submission, optional: true
  has_one :sequencing_metadata

  validates :name, presence: true
end
