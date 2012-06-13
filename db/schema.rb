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

ActiveRecord::Schema.define(:version => 20120613213827) do

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
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
