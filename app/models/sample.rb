# frozen_string_literal: true

# This is a temporary object
# Samples will more than likely come from the Sequencscape API
class Sample < ApplicationRecord
  belongs_to :well, optional: true
  belongs_to :library_tube, optional: true
  belongs_to :submission, optional: true
  belongs_to :sequencing_run, optional: true
  has_one :sequencing_metadata

  validates :name, presence: true
  validate :check_when_has_sequencing_run

  private

  def check_when_has_sequencing_run
    return unless sequencing_run.present?
    return if sequencing_metadata.present?
    errors.add(:sample, 'has a sequencing run but no metadata.')
  end
end
