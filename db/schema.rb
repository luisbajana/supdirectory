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

ActiveRecord::Schema.define(:version => 20141117062243) do

  create_table "contacts", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "industry"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "ecuador_agua_consumos", :force => true do |t|
    t.float    "minimoConsumo"
    t.float    "mediaConsumo"
    t.float    "maximoConsumo"
    t.float    "totalConsumo"
    t.float    "valorMinimo"
    t.float    "valorMedia"
    t.float    "valorMaximo"
    t.float    "minimoSierra"
    t.float    "minimoCosta"
    t.float    "minimoAmazonia"
    t.float    "mediaSierra"
    t.float    "mediaCosta"
    t.float    "mediaAmazonia"
    t.float    "maximoSierra"
    t.float    "maximoCosta"
    t.float    "maximoAmazonia"
    t.float    "metrosCubicosTotalesSierra"
    t.float    "metrosCubicosTotalesCosta"
    t.float    "metrosCubicosTotalesAmazonia"
    t.float    "valorMinimoSierra"
    t.float    "valorMinimoCosta"
    t.float    "valorMinimoAmazonia"
    t.float    "valorMediaSierra"
    t.float    "valorMediaCosta"
    t.float    "valorMediaAmazonia"
    t.float    "valorMaximoSierra"
    t.float    "valorMaximoCosta"
    t.float    "valorMaximoAmazonia"
    t.float    "valorTotalSierra"
    t.float    "valorTotalCosta"
    t.float    "valorTotalAmazonia"
    t.datetime "created_at",                   :null => false
    t.datetime "updated_at",                   :null => false
  end

  create_table "gs", :force => true do |t|
    t.string   "EcuadorConsumo"
    t.float    "minimoConsumo"
    t.float    "mediaConsumo"
    t.float    "maximoConsumo"
    t.float    "totalConsumo"
    t.float    "valorMinimo"
    t.float    "valorMedia"
    t.float    "valorMaximo"
    t.float    "minimoSierra"
    t.float    "minimoCosta"
    t.float    "minimoAmazonia"
    t.float    "mediaSierra"
    t.float    "mediaCosta"
    t.float    "mediaAmazonia"
    t.float    "maximoSierra"
    t.float    "maximoCosta"
    t.float    "maximoAmazonia"
    t.float    "metrosCubicosTotalesSierra"
    t.float    "metrosCubicosTotalesCosta"
    t.float    "metrosCubicosTotalesAmazonia"
    t.float    "valorMinimoSierra"
    t.float    "valorMinimoCosta"
    t.float    "valorMinimoAmazonia"
    t.float    "valorMediaSierra"
    t.float    "valorMediaCosta"
    t.float    "valorMediaAmazonia"
    t.float    "valorMaximoSierra"
    t.float    "valorMaximoCosta"
    t.float    "valorMaximoAmazonia"
    t.float    "valorTotalSierra"
    t.float    "valorTotalCosta"
    t.float    "valorTotalAmazonia"
    t.datetime "created_at",                   :null => false
    t.datetime "updated_at",                   :null => false
  end

  create_table "locations", :force => true do |t|
    t.string   "address"
    t.float    "latitude"
    t.float    "longitude"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "mentors", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "industry"
    t.string   "country"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "outsources", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "phone"
    t.string   "country"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.string   "field"
  end

  create_table "partes", :force => true do |t|
    t.string   "tipo"
    t.string   "estado"
    t.string   "macpc"
    t.float    "latitude"
    t.float    "longitude"
    t.string   "address"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
    t.boolean  "gmaps"
    t.integer  "user_id"
    t.integer  "factor_contaminante"
    t.float    "precio"
  end

  create_table "presupuestos", :force => true do |t|
    t.string   "tipo"
    t.string   "funcion"
    t.integer  "codigoSectorial"
    t.string   "sectorial"
    t.integer  "codigoGrupo"
    t.string   "grupo"
    t.decimal  "valor"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "staffs", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "description"
    t.string   "group"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "startups", :force => true do |t|
    t.string   "startup_name"
    t.string   "contact_name"
    t.string   "email"
    t.string   "industry"
    t.string   "tribe"
    t.string   "country"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.integer  "generation"
  end

  create_table "sustancia", :force => true do |t|
    t.string   "nombre"
    t.float    "contenidoporcentual"
    t.float    "peso"
    t.integer  "eficienciareciclaje"
    t.text     "uso"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
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
    t.string   "nombre"
    t.string   "telefono"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
