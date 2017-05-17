# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20170516141950) do

  create_table "library_tubes", force: :cascade do |t|
    t.string "uuid"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "samples", force: :cascade do |t|
    t.string "name"
    t.integer "well_id"
    t.integer "library_tube_id"
    t.integer "submission_id"
    t.integer "sequencing_run_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["library_tube_id"], name: "index_samples_on_library_tube_id"
    t.index ["sequencing_run_id"], name: "index_samples_on_sequencing_run_id"
    t.index ["submission_id"], name: "index_samples_on_submission_id"
    t.index ["well_id"], name: "index_samples_on_well_id"
  end

  create_table "sequencing_metadata", force: :cascade do |t|
    t.integer "collection_time"
    t.integer "immobilization_time"
    t.boolean "size", default: false
    t.integer "sample_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["sample_id"], name: "index_sequencing_metadata_on_sample_id"
  end

  create_table "sequencing_runs", force: :cascade do |t|
    t.string "dna_template_prep_kit_box_barcode"
    t.string "binding_kit_box_barcode"
    t.string "dna_control_complex_box_barcode"
    t.string "sequencing_kit_box_barcode"
    t.string "uuid"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "submissions", force: :cascade do |t|
    t.integer "sequencing_machine", default: 0
    t.string "sequencing_type"
    t.integer "insert_size"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_submissions_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "login"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "wells", force: :cascade do |t|
    t.string "position"
    t.string "uuid"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
