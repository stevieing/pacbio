# frozen_string_literal: true

FactoryGirl.define do
  factory :sequencing_run do
    transient do
      sequence(:n)
    end

    dna_template_prep_kit_box_barcode { "DTPKBB#{n}" }
    binding_kit_box_barcode { "BKBB#{n}" }
    sequencing_kit_box_barcode { "SKBB#{n}" }
  end
end
