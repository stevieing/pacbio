# frozen_string_literal: true

class CreateLibraryTubes < ActiveRecord::Migration[5.1]
  def change
    create_table :library_tubes do |t|
      t.string :uuid
      t.timestamps
    end
  end
end
