class SequencingRun < ApplicationRecord

  include Uuidable

  validates_presence_of :dna_template_prep_kit_box_barcode, 
                        :binding_kit_box_barcode, :sequencing_kit_box_barcode

end
