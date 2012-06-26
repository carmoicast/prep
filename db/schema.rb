# encoding: UTF-8
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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120626002751) do

  create_table "admins", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "admins", ["email"], :name => "index_admins_on_email", :unique => true
  add_index "admins", ["reset_password_token"], :name => "index_admins_on_reset_password_token", :unique => true

  create_table "boxes", :force => true do |t|
    t.string   "casilla"
    t.string   "seccion"
    t.datetime "hora_apertura"
    t.datetime "hora_cierre"
    t.string   "direccion"
    t.string   "municipio"
    t.integer  "id_incidente"
    t.string   "rc_uno"
    t.string   "rc_dos"
    t.string   "rc_tres"
    t.integer  "pre_pan"
    t.integer  "pre_pri"
    t.integer  "pre_prd"
    t.integer  "pre_verde"
    t.integer  "pre_pt"
    t.integer  "pre_movimiento"
    t.integer  "pre_nueva_alinza"
    t.integer  "pre_coalicion_uno"
    t.integer  "pre_coalicion_dos"
    t.integer  "pre_coalicion_tres"
    t.integer  "pre_coalicion_cuatro"
    t.integer  "pre_coalicion_cinco"
    t.integer  "pre_candidatos_no_registrado"
    t.integer  "pre_votos_nulos"
    t.integer  "pre_total"
    t.integer  "gob_pan"
    t.integer  "gob_pri"
    t.integer  "gob_prd"
    t.integer  "gob_verde"
    t.integer  "gob_pt"
    t.integer  "gob_movimiento"
    t.integer  "gob_nueva_alianza"
    t.integer  "gob_coalicion_uno"
    t.integer  "gob_coalicion_dos"
    t.integer  "gob_coalicion_tres"
    t.integer  "gob_coalicion_cuatro"
    t.integer  "gob_coalicion_cinco"
    t.integer  "gob_candidatos_no_registrado"
    t.integer  "gob_votos_nulos"
    t.integer  "gob_total"
    t.integer  "diputado_federal_pan"
    t.integer  "diputado_federal_pri"
    t.integer  "diputado_federal_prd"
    t.integer  "diputado_federal_verde"
    t.integer  "diputado_federal_pt"
    t.integer  "diputado_federal_movimiento"
    t.integer  "diputado_federal_nueva_alianza"
    t.integer  "diputado_federal_coalicion_uno"
    t.integer  "diputado_federal_coalicion_dos"
    t.integer  "diputado_federal_coalicion_tres"
    t.integer  "diputado_federal_coalicion_cuatro"
    t.integer  "diputado_federal_coalicion_cinco"
    t.integer  "diputado_federal_no_registrado"
    t.integer  "diputado_federal_votos_nulos"
    t.integer  "diputado_federal_total"
    t.datetime "created_at",                        :null => false
    t.datetime "updated_at",                        :null => false
    t.string   "distrito"
    t.integer  "user_id"
  end

  create_table "bunkers", :force => true do |t|
    t.string   "municipio"
    t.boolean  "en_operacion"
    t.boolean  "en_ruta"
    t.string   "nombre"
    t.string   "casilla_uno"
    t.string   "casilla_dos"
    t.string   "casilla_tres"
    t.string   "casilla_cuatro"
    t.string   "casilla_cinco"
    t.string   "casilla_seis"
    t.string   "casilla_siete"
    t.string   "casilla_ocho"
    t.string   "casilla_nueve"
    t.string   "casilla_diez"
    t.integer  "box_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.string   "telefono"
  end

  add_index "bunkers", ["box_id"], :name => "index_bunkers_on_box_id"

  create_table "familystructures", :force => true do |t|
    t.string   "paterno"
    t.string   "materno"
    t.string   "nombre"
    t.string   "parentesco"
    t.integer  "edad"
    t.integer  "id_general"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "generals", :force => true do |t|
    t.string   "nombre"
    t.string   "paterno"
    t.string   "materno"
    t.string   "telefono"
    t.integer  "tipotel"
    t.string   "email"
    t.text     "domicilio"
    t.string   "colonia"
    t.integer  "estudios"
    t.integer  "rolfamiliar"
    t.string   "profesion"
    t.integer  "id_estructura"
    t.integer  "id_campaign"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "incidences", :force => true do |t|
    t.datetime "hora"
    t.integer  "tipo_incidente_apertura"
    t.integer  "tipo_incidente_proceso"
    t.integer  "tipo_incidente_cierre"
    t.string   "tipo_incidente_otro"
    t.integer  "box_id"
    t.datetime "created_at",              :null => false
    t.datetime "updated_at",              :null => false
    t.string   "incidencia"
  end

  add_index "incidences", ["box_id"], :name => "index_incidences_on_box_id"

  create_table "polls", :force => true do |t|
    t.string   "paterno"
    t.string   "materno"
    t.string   "nombre"
    t.integer  "telefono"
    t.string   "correo"
    t.text     "domicilio"
    t.integer  "estudio"
    t.string   "rol"
    t.string   "profesion"
    t.string   "nombre_uno"
    t.integer  "tipo_uno"
    t.integer  "edad_uno"
    t.string   "nombre_dos"
    t.integer  "tipo_dos"
    t.integer  "edad_dos"
    t.string   "nombre_tres"
    t.integer  "edad_tres"
    t.string   "nombre_cuatro"
    t.integer  "tipo_cuatro"
    t.integer  "edad_cuatro"
    t.string   "nombre_cinco"
    t.integer  "tipo_cinco"
    t.integer  "edad_cinco"
    t.string   "nombre_seis"
    t.integer  "tipo_seis"
    t.integer  "edad_seis"
    t.string   "nombre_siete"
    t.integer  "tipo_siete"
    t.integer  "edad_siete"
    t.string   "nombre_ocho"
    t.integer  "tipo_ocho"
    t.integer  "edad_ocho"
    t.string   "nombre_nueve"
    t.string   "tipo_nueve"
    t.integer  "edad_nueve"
    t.string   "nombre_diez"
    t.integer  "tipo_diez"
    t.integer  "edad_diez"
    t.boolean  "posicionamiento_a"
    t.boolean  "posicionamiento_b"
    t.boolean  "posicionamiento_c"
    t.boolean  "posicionamiento_d"
    t.boolean  "posicionamiento_e"
    t.boolean  "pregunta_a"
    t.text     "pregunta_observaciones"
    t.datetime "created_at",             :null => false
    t.datetime "updated_at",             :null => false
    t.integer  "tipo_tres"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.boolean  "admin"
    t.string   "role"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
