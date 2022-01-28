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

ActiveRecord::Schema.define(version: 2022_01_28_120841) do

  create_table "products", force: :cascade do |t|
    t.string "category"
    t.string "name"
    t.string "descriptionPreview"
    t.string "description"
    t.string "images"
    t.integer "price"
    t.integer "ticketsRemaining"
    t.integer "tickets"
    t.string "keywords"
    t.integer "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "buyers"
    t.boolean "finished", default: false
    t.integer "winner"
  end

  create_table "user_buyer_and_seller_rankings", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "firstName"
    t.string "lastName"
    t.string "username"
    t.string "password"
    t.string "picture"
    t.integer "points"
    t.string "email"
    t.datetime "dateOfBirth"
    t.string "address"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.float "buyer_rating"
    t.float "seller_rating"
    t.date "dob"
    t.integer "tickets_bought"
    t.boolean "verified"
  end

  create_table "verified_seller_columns", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
