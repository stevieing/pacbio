# frozen_string_literal: true

class CreateSubmissions < ActiveRecord::Migration[5.1]
  def change
    create_table :submissions do |t|
      t.integer :sequencing_machine, default: 0
      t.string :sequencing_type
      t.integer :insert_size
      t.references :user, index: true, foreign_key: true
      t.timestamps
    end
  end
end
