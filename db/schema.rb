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

ActiveRecord::Schema.define(version: 2019_08_28_170258) do

  create_table "admins", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admins_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true
  end

  create_table "arquivos", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "eventos", force: :cascade do |t|
    t.string "titulo"
    t.text "texto"
    t.date "date"
    t.text "local"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "finances", force: :cascade do |t|
    t.integer "cd_finance"
    t.string "nm_finance"
    t.string "ds_finance"
    t.float "vl_finance"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "information", force: :cascade do |t|
    t.string "nm_sindico"
    t.integer "cd_sindico"
    t.string "ds_email"
    t.integer "cd_telefone"
    t.integer "cd_celular"
    t.string "ds_endereco"
    t.string "ds_municipio"
    t.integer "cd_apartamento"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

<<<<<<< HEAD
  create_table "messages", force: :cascade do |t|
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "perfils", force: :cascade do |t|
    t.string "nome"
    t.string "sobrenome"
    t.integer "telefone"
    t.string "img_name"
    t.string "img_content_type"
    t.integer "img_file_size"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "predios", force: :cascade do |t|
    t.string "nm_sindico"
    t.integer "cd_sindico"
=======
  create_table "information", force: :cascade do |t|
    t.string "nm_sindico"
    t.integer "cd_sindico"
    t.string "ds_email"
    t.integer "cd_telefone"
    t.integer "cd_celular"
    t.string "ds_endereco"
    t.string "ds_municipio"
    t.integer "cd_apartamento"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "papers", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "perfils", force: :cascade do |t|
    t.string "nome"
    t.string "sobrenome"
    t.integer "telefone"
    t.string "img_name"
    t.string "img_content_type"
    t.integer "img_file_size"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "predios", force: :cascade do |t|
>>>>>>> 598fd8fa8c8e538733d84ba6cf76579115ff1b15
    t.string "nm_predio"
    t.integer "cd_numero"
    t.integer "cd_bloco"
    t.integer "cd_cep"
    t.string "ds_endereco"
    t.string "ds_municipio"
    t.string "sg_estado"
    t.string "ds_regioesSociais"
    t.integer "cd_telefone"
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
    t.string "img_file_name"
    t.string "img_content_type"
    t.integer "img_file_size"
    t.datetime "img_updated_at"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
