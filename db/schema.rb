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

ActiveRecord::Schema.define(version: 2023_01_23_220634) do

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
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "budgets", force: :cascade do |t|
    t.string "nom"
    t.decimal "quantitat"
    t.bigint "project_id", null: false
    t.bigint "provider_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["project_id"], name: "index_budgets_on_project_id"
    t.index ["provider_id"], name: "index_budgets_on_provider_id"
  end

  create_table "cobros", force: :cascade do |t|
    t.decimal "quantitat"
    t.date "fecha"
    t.bigint "comprador_id", null: false
    t.bigint "sale_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["comprador_id"], name: "index_cobros_on_comprador_id"
    t.index ["sale_id"], name: "index_cobros_on_sale_id"
  end

  create_table "compradors", force: :cascade do |t|
    t.string "nombre"
    t.string "contacto"
    t.string "mail"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "documents", force: :cascade do |t|
    t.string "nom"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "investment_id"
    t.index ["investment_id"], name: "index_documents_on_investment_id"
  end

  create_table "expenses", force: :cascade do |t|
    t.string "nom"
    t.decimal "quantitat"
    t.date "fecha"
    t.bigint "project_id", null: false
    t.bigint "provider_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["project_id"], name: "index_expenses_on_project_id"
    t.index ["provider_id"], name: "index_expenses_on_provider_id"
  end

  create_table "investments", force: :cascade do |t|
    t.string "direccion"
    t.decimal "precio_venta"
    t.decimal "precio_adquisicion"
    t.decimal "gastos"
    t.string "estado"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "description"
    t.string "poblacion"
    t.string "google_location"
  end

  create_table "pagadors", force: :cascade do |t|
    t.string "nombre"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "pagos", force: :cascade do |t|
    t.decimal "quantitat"
    t.date "fecha"
    t.bigint "pagador_id", null: false
    t.bigint "expense_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["expense_id"], name: "index_pagos_on_expense_id"
    t.index ["pagador_id"], name: "index_pagos_on_pagador_id"
  end

  create_table "participations", force: :cascade do |t|
    t.decimal "quantitat_invertida"
    t.date "data"
    t.bigint "user_id", null: false
    t.bigint "investment_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["investment_id"], name: "index_participations_on_investment_id"
    t.index ["user_id"], name: "index_participations_on_user_id"
  end

  create_table "projects", force: :cascade do |t|
    t.string "nombre"
    t.bigint "investment_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["investment_id"], name: "index_projects_on_investment_id"
  end

  create_table "providers", force: :cascade do |t|
    t.string "nom_comercial"
    t.string "pesona_contacte"
    t.string "telefon"
    t.string "mail"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "sales", force: :cascade do |t|
    t.string "descripcio"
    t.decimal "quantitat"
    t.date "fecha"
    t.bigint "investment_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["investment_id"], name: "index_sales_on_investment_id"
  end

  create_table "tasks", force: :cascade do |t|
    t.string "nom"
    t.date "data_limit"
    t.bigint "investment_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["investment_id"], name: "index_tasks_on_investment_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "admin"
    t.integer "role"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
  add_foreign_key "budgets", "projects"
  add_foreign_key "budgets", "providers"
  add_foreign_key "cobros", "compradors"
  add_foreign_key "cobros", "sales"
  add_foreign_key "expenses", "projects"
  add_foreign_key "expenses", "providers"
  add_foreign_key "pagos", "expenses"
  add_foreign_key "pagos", "pagadors"
  add_foreign_key "participations", "investments"
  add_foreign_key "participations", "users"
  add_foreign_key "projects", "investments"
  add_foreign_key "sales", "investments"
  add_foreign_key "tasks", "investments"
end
