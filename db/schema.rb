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

ActiveRecord::Schema.define(version: 2022_07_20_212644) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string "nome"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.text "image_url"
  end

  create_table "coins", force: :cascade do |t|
    t.bigint "offer_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "montante_cents", default: 0, null: false
    t.bigint "user_id"
    t.bigint "worker_id"
    t.index ["offer_id"], name: "index_coins_on_offer_id"
    t.index ["user_id"], name: "index_coins_on_user_id"
    t.index ["worker_id"], name: "index_coins_on_worker_id"
  end

  create_table "offers", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.boolean "status"
    t.boolean "completa"
    t.bigint "service_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "preço_cents", default: 0, null: false
    t.index ["service_id"], name: "index_offers_on_service_id"
    t.index ["user_id"], name: "index_offers_on_user_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.text "comentario"
    t.integer "avaliaçao"
    t.bigint "user_id", null: false
    t.bigint "service_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["service_id"], name: "index_reviews_on_service_id"
    t.index ["user_id"], name: "index_reviews_on_user_id"
  end

  create_table "services", force: :cascade do |t|
    t.string "nome"
    t.bigint "category_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "preço_cents", default: 0, null: false
    t.bigint "worker_id"
    t.index ["category_id"], name: "index_services_on_category_id"
    t.index ["worker_id"], name: "index_services_on_worker_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "nome"
    t.integer "idade"
    t.text "endereço"
    t.boolean "trabalhador"
    t.string "telefone"
    t.string "cpf"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "workers", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "nome"
    t.integer "idade"
    t.text "endereço"
    t.string "telefone"
    t.string "cpf"
    t.index ["email"], name: "index_workers_on_email", unique: true
    t.index ["reset_password_token"], name: "index_workers_on_reset_password_token", unique: true
  end

  add_foreign_key "coins", "offers"
  add_foreign_key "offers", "services"
  add_foreign_key "offers", "users"
  add_foreign_key "reviews", "services"
  add_foreign_key "reviews", "users"
  add_foreign_key "services", "categories"
end
