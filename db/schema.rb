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

ActiveRecord::Schema.define(version: 2020_12_29_154729) do

  create_table "groups", force: :cascade do |t|
    t.string "groupname"
    t.string "code"
    t.string "des1"
    t.string "des2"
    t.string "des3"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "people", force: :cascade do |t|
    t.integer "group_id", null: false
    t.string "name"
    t.string "firstname"
    t.string "email"
    t.integer "age"
    t.boolean "sex"
    t.string "des1"
    t.string "des2"
    t.string "des3"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["group_id"], name: "index_people_on_group_id"
  end

  add_foreign_key "people", "groups"
end
