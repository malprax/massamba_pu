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

ActiveRecord::Schema.define(version: 20140611221744) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "albums", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.integer  "galery_id"
  end

  create_table "categori_suaras", force: true do |t|
    t.string   "jenis_suara"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "categori_suaras", ["jenis_suara"], name: "index_categori_suaras_on_jenis_suara", using: :btree

  create_table "ckeditor_assets", force: true do |t|
    t.string   "data_file_name",               null: false
    t.string   "data_content_type"
    t.integer  "data_file_size"
    t.integer  "assetable_id"
    t.string   "assetable_type",    limit: 30
    t.string   "type",              limit: 30
    t.integer  "width"
    t.integer  "height"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "ckeditor_assets", ["assetable_type", "assetable_id"], name: "idx_ckeditor_assetable", using: :btree
  add_index "ckeditor_assets", ["assetable_type", "type", "assetable_id"], name: "idx_ckeditor_assetable_type", using: :btree

  create_table "daftar_pegawais", force: true do |t|
    t.string   "name"
    t.string   "nip"
    t.string   "pangkat_id"
    t.string   "jabatan_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "position"
  end

  create_table "dpu_berita", force: true do |t|
    t.string   "title"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "galeries", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "jabatans", force: true do |t|
    t.string   "nama_jabatan"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "jabatans", ["nama_jabatan"], name: "index_jabatans_on_nama_jabatan", using: :btree

  create_table "pages", force: true do |t|
    t.string   "name"
    t.text     "content"
    t.string   "permalink"
    t.integer  "picture_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pangkats", force: true do |t|
    t.string   "nama_pangkat"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "pangkats", ["nama_pangkat"], name: "index_pangkats_on_nama_pangkat", using: :btree

  create_table "pegawai_lists", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sekilas_infos", force: true do |t|
    t.string   "title"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "suara_rakyats", force: true do |t|
    t.string   "name"
    t.string   "address"
    t.integer  "categori_suara_id"
    t.text     "comment"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

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
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
