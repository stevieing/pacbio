class CreateSamples < ActiveRecord::Migration[5.1]
  def change
    create_table :samples do |t|
      t.string :name
      t.references :well, index: true, foreign_key: true
      t.references :library_tube, index: true, foreign_key: true
      t.references :submission, index: true, foreign_key: true
      t.timestamps
    end
  end
end
