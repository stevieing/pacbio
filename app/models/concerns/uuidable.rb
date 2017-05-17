# frozen_string_literal: true

# Allows creation of UUIDs for AR models
# TODO; I don't like the way it checks whether UUID already exists.
# Do we need to check it??
module Uuidable
  extend ActiveSupport::Concern

  included do
    after_initialize :create_uuid
  end

  def create_uuid
    self.uuid = generate_uuid
  end

  def generate_uuid
    uuid = SecureRandom.uuid
    generate_uuid unless self.class.find_by(uuid: uuid).nil?
    uuid
  end
end
