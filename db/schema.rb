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

ActiveRecord::Schema.define(version: 2021_11_03_003604) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "libros", force: :cascade do |t|
    t.string "titulo"
    t.string "autor"
    t.integer "estado"
    t.date "fecha_prestado"
    t.date "fecha_devolucion"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "pizzas", id: :integer, default: nil, force: :cascade do |t|
    t.integer "stock"
    t.decimal "costo"
    t.string "nombre", limit: 25
    t.check_constraint "(stock)::numeric >= 0.00", name: "pizzas_stock_check"
  end

  create_table "usuario", id: :integer, default: nil, force: :cascade do |t|
    t.string "email", limit: 30
  end

  create_table "ventas", id: false, force: :cascade do |t|
    t.string "cliente", limit: 20
    t.date "fecha"
    t.decimal "monto"
    t.integer "pizza"
  end

  add_foreign_key "ventas", "pizzas", column: "pizza", name: "ventas_pizza_fkey"
end
