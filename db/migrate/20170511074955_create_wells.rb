# frozen_string_literal: true

class CreateWells < ActiveRecord::Migration[5.1]
  def change
    create_table :wells do |t|
      t.string :position
      t.string :uuid
      t.timestamps
    end
  end
end
