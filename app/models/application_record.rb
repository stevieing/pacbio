# frozen_string_literal: true

# Top level AR model
class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
end
