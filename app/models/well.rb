# frozen_string_literal: true

# A well refers to the well on a plate on the sequencing machine
# This will contain a sample
class Well < ApplicationRecord
  include Uuidable

  has_one :sample
  validates :position, presence: true

  delegate :name, to: :sample, prefix: true
end
