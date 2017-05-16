class Well < ApplicationRecord

  include Uuidable

  has_one :sample
  validates_presence_of :position

  delegate :name, to: :sample, prefix: true
end
