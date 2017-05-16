class LibraryTube < ApplicationRecord

  include Uuidable

  has_one :sample, required: true

  delegate :name, to: :sample
end
