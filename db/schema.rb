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

ActiveRecord::Schema[7.0].define(version: 2024_01_28_230830) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "clientes", force: :cascade do |t|
    t.string "codigo"
    t.string "nombre"
    t.string "correo"
    t.string "telefono"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contrato_combo_paquetes", force: :cascade do |t|
    t.bigint "cliente_id", null: false
    t.string "combo_paquete"
    t.integer "cantidad"
    t.decimal "valor"
    t.datetime "fecha_contratacion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cliente_id"], name: "index_contrato_combo_paquetes_on_cliente_id"
  end

  create_table "contrato_servicios", force: :cascade do |t|
    t.bigint "cliente_id", null: false
    t.string "servicio"
    t.integer "cantidad"
    t.decimal "valor_individual"
    t.datetime "fecha_contratacion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cliente_id"], name: "index_contrato_servicios_on_cliente_id"
  end

  create_table "promocions", force: :cascade do |t|
    t.string "nombre"
    t.boolean "estado"
    t.daterange "fecha_vigencia"
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
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "contrato_combo_paquetes", "clientes"
  add_foreign_key "contrato_servicios", "clientes"
end
