# frozen_string_literal: true

# A library tube is created when a library is created from a Sample
class LibraryTube < ApplicationRecord
  include Uuidable

  has_one :sample, required: true

  delegate :name, to: :sample
end
