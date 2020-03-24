# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_03_23_204236) do

  create_table "empleados", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.integer "CodigoEmpleado"
    t.string "Nombre"
    t.string "Apellido"
    t.string "Departamento"
    t.string "Puesto"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "productos", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "Serial"
    t.string "Descripcion"
    t.string "Marca"
    t.string "Modelo"
    t.string "Area"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "transferencia_cabs", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.bigint "empleados_id", null: false
    t.string "Servicio"
    t.string "Estatus", default: "Abierto"
    t.string "Tiempo"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["empleados_id"], name: "index_transferencia_cabs_on_empleados_id"
  end

  create_table "transferenica_dets", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.integer "TransferenciaCab_id"
    t.string "Servicio"
    t.integer "producto_id"
    t.string "Estatus", default: "Abierto"
    t.string "Tiempo"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "userCompleto"
    t.string "Correo"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "Tipo"
    t.string "Activo", default: "S"
  end

  add_foreign_key "transferencia_cabs", "empleados", column: "empleados_id"
end
