# frozen_string_literal: true

FactoryGirl.define do
  factory :sequencing_run do
    transient do
      sequence(:n)
      number_of_samples 8
    end

    dna_template_prep_kit_box_barcode { "DTPKBB#{n}" }
    binding_kit_box_barcode { "BKBB#{n}" }
    sequencing_kit_box_barcode { "SKBB#{n}" }

    after(:build) do |sequencing_run, evaluator|
      sequencing_run.samples << build_list(
        :sample_with_sequencing_metadata, evaluator.number_of_samples,
        sequencing_run: sequencing_run
      )
    end
  end
end
