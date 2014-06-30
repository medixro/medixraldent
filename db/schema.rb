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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20140629090551) do

  create_table "dia", force: true do |t|
    t.string   "anamn"
    t.string   "reztc"
    t.string   "tparac"
    t.string   "diagn"
    t.string   "recomandari"
    t.string   "var"
    t.string   "var1"
    t.string   "var2"
    t.string   "var3"
    t.string   "var4"
    t.string   "var5"
    t.integer  "pacient_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image"
  end

  add_index "dia", ["pacient_id"], name: "index_dia_on_pacient_id"

  create_table "diagns", force: true do |t|
    t.string   "anamn"
    t.string   "reztc"
    t.string   "tparac"
    t.string   "diagnostic"
    t.string   "recom"
    t.string   "var"
    t.string   "var1"
    t.string   "var2"
    t.string   "var3"
    t.string   "var4"
    t.string   "var5"
    t.integer  "pacinet_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "diagns", ["pacinet_id"], name: "index_diagns_on_pacinet_id"

  create_table "diags", force: true do |t|
    t.string   "anamn"
    t.string   "reztc"
    t.string   "tparac"
    t.string   "diagnostic"
    t.string   "recom"
    t.string   "var"
    t.string   "var1"
    t.string   "var2"
    t.string   "var3"
    t.string   "var4"
    t.string   "var5"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "notificaris", force: true do |t|
    t.string   "text"
    t.string   "pacient_id"
    t.string   "var"
    t.string   "var1"
    t.string   "var2"
    t.string   "var3"
    t.string   "var4"
    t.string   "var5"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pacients", force: true do |t|
    t.string   "nume"
    t.string   "prenume"
    t.string   "adresa"
    t.string   "nrtel"
    t.string   "email"
    t.string   "var"
    t.string   "var1"
    t.string   "var2"
    t.string   "var3"
    t.string   "var4"
    t.string   "var5"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "programaris", force: true do |t|
    t.string   "data"
    t.string   "ora"
    t.string   "medicul"
    t.string   "tip"
    t.string   "var"
    t.string   "var1"
    t.string   "var2"
    t.string   "var3"
    t.string   "var4"
    t.string   "var5"
    t.integer  "pacient_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "programaris", ["pacient_id"], name: "index_programaris_on_pacient_id"

  create_table "rezultates", force: true do |t|
    t.string   "exam"
    t.string   "diagn"
    t.string   "image"
    t.string   "var"
    t.string   "var1"
    t.string   "var2"
    t.string   "var3"
    t.string   "var4"
    t.string   "var5"
    t.integer  "pacient_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "var6"
    t.string   "var7"
    t.string   "var8"
    t.string   "var9"
    t.string   "var10"
    t.string   "var11"
    t.string   "var12"
    t.string   "var13"
    t.string   "var14"
    t.string   "var15"
    t.string   "var16"
  end

  add_index "rezultates", ["pacient_id"], name: "index_rezultates_on_pacient_id"

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "username"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
