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

ActiveRecord::Schema.define(version: 2020_01_12_084640) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "currency_exchange_pairs", force: :cascade do |t|
    t.string "base_currency"
    t.string "target_currency"
    t.integer "number_of_weeks"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "amount"
  end

  create_table "currency_exchange_rates", force: :cascade do |t|
    t.string "target_currency"
    t.date "date"
    t.decimal "rate"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "base_currency"
    t.index ["date", "base_currency", "target_currency"], name: "index_exchange_rates_on_date_and_base_cur_and_target_cur", unique: true
    t.index ["date"], name: "index_currency_exchange_rates_on_date"
    t.index ["target_currency"], name: "index_currency_exchange_rates_on_target_currency"
  end

end
