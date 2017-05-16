class CreateSequencingMetadata < ActiveRecord::Migration[5.1]
  def change
    create_table :sequencing_metadata do |t|
      t.integer :collection_time
      t.integer :immobilization_time
      t.boolean :size, default: false
      t.references :sample, index: true, foreign_key: true
      t.timestamps
    end
  end
end
