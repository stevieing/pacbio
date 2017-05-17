# frozen_string_literal: true

# Users need to be authenticated
# Used to identify the person who is doing the sequencing
class User < ApplicationRecord
  validates :login, presence: true
end
