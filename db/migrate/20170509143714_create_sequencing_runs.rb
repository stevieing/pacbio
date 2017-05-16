class CreateSequencingRuns < ActiveRecord::Migration[5.1]
  def change
    create_table :sequencing_runs do |t|
      t.string :dna_template_prep_kit_box_barcode
      t.string :binding_kit_box_barcode
      t.string :dna_control_complex_box_barcode
      t.string :sequencing_kit_box_barcode
      t.string :uuid
      t.timestamps
    end
  end
end
