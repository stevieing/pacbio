# frozen_string_literal: true

# A temporary class
# Submissions will come from Sequencescape
class Submission < ApplicationRecord
  enum sequencing_machine: %i[Sequel RSII]

  belongs_to :user
  has_many :samples

  validates :sequencing_machine, :sequencing_type, presence: true
  validates :insert_size, presence: true, numericality: { only_integer: true }
end
