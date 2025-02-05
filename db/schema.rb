# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.2].define(version: 2025_01_09_031933) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.string "service_name", null: false
    t.bigint "byte_size", null: false
    t.string "checksum"
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "addresses", force: :cascade do |t|
    t.string "street"
    t.string "city"
    t.string "state"
    t.string "zip"
    t.string "country"
    t.boolean "primary_address", default: false
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_addresses_on_user_id"
  end

  create_table "admin_users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true
  end

  create_table "cancer_risk_factors", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cancer_risk_factors_cancers", id: false, force: :cascade do |t|
    t.bigint "cancer_id", null: false
    t.bigint "cancer_risk_factor_id", null: false
    t.index ["cancer_id", "cancer_risk_factor_id"], name: "idx_on_cancer_id_cancer_risk_factor_id_fc021ef85d"
    t.index ["cancer_risk_factor_id", "cancer_id"], name: "idx_on_cancer_risk_factor_id_cancer_id_602dbca588"
  end

  create_table "cancer_stages", force: :cascade do |t|
    t.bigint "cancer_id", null: false
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cancer_id"], name: "index_cancer_stages_on_cancer_id"
  end

  create_table "cancers", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_cancers_on_name", unique: true
  end

  create_table "cancers_symptoms", id: false, force: :cascade do |t|
    t.bigint "cancer_id", null: false
    t.bigint "symptom_id", null: false
    t.index ["cancer_id", "symptom_id"], name: "index_cancers_symptoms_on_cancer_id_and_symptom_id"
    t.index ["symptom_id", "cancer_id"], name: "index_cancers_symptoms_on_symptom_id_and_cancer_id"
  end

  create_table "documents", force: :cascade do |t|
    t.bigint "medical_record_id", null: false
    t.string "file_path"
    t.string "file_name"
    t.string "file_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["medical_record_id"], name: "index_documents_on_medical_record_id"
  end

  create_table "feedbacks", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_feedbacks_on_user_id"
  end

  create_table "medical_records", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "created_by_user_id", null: false
    t.bigint "cancer_id", null: false
    t.bigint "cancer_stage_id", null: false
    t.text "diagnosis"
    t.text "treatment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cancer_id"], name: "index_medical_records_on_cancer_id"
    t.index ["cancer_stage_id"], name: "index_medical_records_on_cancer_stage_id"
    t.index ["created_by_user_id"], name: "index_medical_records_on_created_by_user_id"
    t.index ["user_id"], name: "index_medical_records_on_user_id"
  end

  create_table "post_articles", force: :cascade do |t|
    t.string "title"
    t.text "content"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "previous_updated_at"
    t.index ["user_id"], name: "index_post_articles_on_user_id"
  end

  create_table "prescriptions", force: :cascade do |t|
    t.bigint "medical_record_id", null: false
    t.string "medication"
    t.string "dosage"
    t.text "instructions"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["medical_record_id"], name: "index_prescriptions_on_medical_record_id"
  end

  create_table "symptoms", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "treatments", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.boolean "status", default: false
    t.string "phone_number"
    t.string "first_name"
    t.string "last_name"
    t.date "date_of_birth"
    t.string "gender"
    t.bigint "admin_user_id", null: false
    t.string "role"
    t.datetime "date_of_diagnosis"
    t.string "specialization"
    t.index ["admin_user_id"], name: "index_users_on_admin_user_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
  add_foreign_key "addresses", "users"
  add_foreign_key "cancer_stages", "cancers"
  add_foreign_key "documents", "medical_records"
  add_foreign_key "feedbacks", "users"
  add_foreign_key "medical_records", "cancer_stages"
  add_foreign_key "medical_records", "cancers"
  add_foreign_key "medical_records", "users"
  add_foreign_key "medical_records", "users", column: "created_by_user_id"
  add_foreign_key "post_articles", "users"
  add_foreign_key "prescriptions", "medical_records"
  add_foreign_key "users", "admin_users"
end
