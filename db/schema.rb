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

ActiveRecord::Schema[7.0].define(version: 2022_03_03_224523) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "personas", force: :cascade do |t|
    t.string "nombre", null: false
    t.string "apellido_p", null: false
    t.string "apellido_m", null: false
    t.date "fecha_nacimiento", null: false
    t.string "sexo", null: false
    t.string "lugar_nacimiento", null: false
    t.string "estado_civil"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tipousuarios", force: :cascade do |t|
    t.string "nombre_tipo_usuario"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "usuarios", force: :cascade do |t|
    t.string "nombre"
    t.string "email", null: false
    t.string "password"
    t.bigint "tipousuario_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_usuarios_on_email", unique: true
    t.index ["tipousuario_id"], name: "index_usuarios_on_tipousuario_id"
  end

  add_foreign_key "usuarios", "tipousuarios"
end
