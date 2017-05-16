class Sample < ApplicationRecord

  belongs_to :well, optional: true
  belongs_to :library_tube, optional: true
  belongs_to :submission, optional: true
  has_one :sequencing_metadata

  validates_presence_of :name
  
end
