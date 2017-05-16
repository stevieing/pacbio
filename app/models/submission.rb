class Submission < ApplicationRecord

  enum sequencing_machine: [:Sequel, :RSII]

  belongs_to :user
  has_many :samples

  validates_presence_of :sequencing_machine, :sequencing_type
  validates :insert_size, presence: true, numericality: { only_integer: true }
end
