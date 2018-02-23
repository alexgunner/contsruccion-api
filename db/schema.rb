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

ActiveRecord::Schema.define(version: 20180223174907) do

  create_table "carts", force: :cascade do |t|
    t.integer "product_quantity"
    t.integer "product_id"
    t.integer "reservation_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_carts_on_product_id"
    t.index ["reservation_id"], name: "index_carts_on_reservation_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string "category_name"
    t.text "category_description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "clients", force: :cascade do |t|
    t.string "client_name"
    t.string "client_lastname"
    t.string "client_address"
    t.string "client_phone"
    t.string "client_email"
    t.string "client_nit"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "manufacturers", force: :cascade do |t|
    t.string "manufacturer_name"
    t.text "manufacturer_description"
    t.string "manufacturer_country"
    t.string "manufacturer_city"
    t.string "manufacturer_email"
    t.string "manufacturer_phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "product_in_storehouses", force: :cascade do |t|
    t.float "quantity"
    t.integer "product_id"
    t.integer "storehouse_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_product_in_storehouses_on_product_id"
    t.index ["storehouse_id"], name: "index_product_in_storehouses_on_storehouse_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "product_name"
    t.text "product_description"
    t.float "product_price"
    t.string "product_color"
    t.integer "provider_id"
    t.integer "manufacturer_id"
    t.integer "category_id"
    t.integer "subcategory_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_products_on_category_id"
    t.index ["manufacturer_id"], name: "index_products_on_manufacturer_id"
    t.index ["provider_id"], name: "index_products_on_provider_id"
    t.index ["subcategory_id"], name: "index_products_on_subcategory_id"
  end

  create_table "providers", force: :cascade do |t|
    t.string "provider_name"
    t.text "provider_description"
    t.string "provider_email"
    t.string "provider_phone"
    t.string "provider_address"
    t.string "provider_city"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reservations", force: :cascade do |t|
    t.integer "confirmed"
    t.integer "client_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["client_id"], name: "index_reservations_on_client_id"
  end

  create_table "storehouses", force: :cascade do |t|
    t.string "storehouse_name"
    t.string "storehouse_country"
    t.string "storehouse_city"
    t.string "storehouse_address"
    t.string "storehouse_phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "subcategories", force: :cascade do |t|
    t.string "subcategory_name"
    t.text "subcategory_description"
    t.integer "category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_subcategories_on_category_id"
  end

end
