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

ActiveRecord::Schema.define(version: 2023_01_17_172443) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "compradors", force: :cascade do |t|
    t.string "nombre"
    t.string "contacto"
    t.string "mail"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "investments", force: :cascade do |t|
    t.string "direccion"
    t.decimal "precio_venta"
    t.decimal "precio_adquisicion"
    t.decimal "gastos"
    t.string "estado"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
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

  create_table "sales", force: :cascade do |t|
    t.string "descripcio"
    t.decimal "quantitat"
    t.date "fecha"
    t.bigint "investment_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["investment_id"], name: "index_sales_on_investment_id"
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
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "participations", "investments"
  add_foreign_key "participations", "users"
  add_foreign_key "sales", "investments"
end
