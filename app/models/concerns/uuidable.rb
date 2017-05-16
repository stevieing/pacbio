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