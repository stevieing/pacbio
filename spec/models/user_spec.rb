# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User, type: :model do
  it 'must have a login' do
    expect(build(:user, login: nil)).to_not be_valid
  end
end
