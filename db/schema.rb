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

ActiveRecord::Schema.define(version: 20150807181217) do

  create_table "atentions", force: :cascade do |t|
    t.integer  "veterinary_appointment_id", limit: 4
    t.integer  "customer_id",               limit: 4
    t.integer  "pet_id",                    limit: 4
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.datetime "date"
  end

  add_index "atentions", ["customer_id"], name: "index_atentions_on_customer_id", using: :btree
  add_index "atentions", ["pet_id"], name: "index_atentions_on_pet_id", using: :btree
  add_index "atentions", ["veterinary_appointment_id"], name: "index_atentions_on_veterinary_appointment_id", using: :btree

  create_table "branches", force: :cascade do |t|
    t.string   "name",          limit: 255
    t.string   "streetaddress", limit: 255
    t.string   "phone",         limit: 255
    t.string   "postalcode",    limit: 255
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "breeds", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.integer  "species_id", limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "breeds", ["species_id"], name: "index_breeds_on_species_id", using: :btree

  create_table "consumptions", force: :cascade do |t|
    t.integer  "atention_id", limit: 4
    t.integer  "service_id",  limit: 4
    t.integer  "guide_id",    limit: 4
    t.decimal  "unitprice",             precision: 10
    t.decimal  "quantity",              precision: 10
    t.decimal  "subtotal",              precision: 10
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
  end

  add_index "consumptions", ["atention_id"], name: "index_consumptions_on_atention_id", using: :btree
  add_index "consumptions", ["guide_id"], name: "index_consumptions_on_guide_id", using: :btree
  add_index "consumptions", ["service_id"], name: "index_consumptions_on_service_id", using: :btree

  create_table "customers", force: :cascade do |t|
    t.integer  "document_type_id", limit: 4
    t.string   "documentnumber",   limit: 255
    t.string   "name",             limit: 255
    t.string   "streetaddresss",   limit: 255
    t.string   "postalcode",       limit: 255
    t.string   "phone",            limit: 255
    t.string   "email",            limit: 255
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  add_index "customers", ["document_type_id"], name: "index_customers_on_document_type_id", using: :btree

  create_table "detail_guides", force: :cascade do |t|
    t.integer  "guide_id",   limit: 4
    t.integer  "product_id", limit: 4
    t.decimal  "unitprice",                precision: 10
    t.decimal  "quantity",                 precision: 10
    t.decimal  "subtotal",                 precision: 10
    t.text     "note",       limit: 65535
    t.datetime "created_at",                              null: false
    t.datetime "updated_at",                              null: false
  end

  add_index "detail_guides", ["guide_id"], name: "index_detail_guides_on_guide_id", using: :btree
  add_index "detail_guides", ["product_id"], name: "index_detail_guides_on_product_id", using: :btree

  create_table "detail_vouchers", force: :cascade do |t|
    t.integer  "voucher_id", limit: 4
    t.integer  "service_id", limit: 4
    t.integer  "guide_id",   limit: 4
    t.decimal  "unitprice",            precision: 10
    t.decimal  "quantity",             precision: 10
    t.decimal  "subtotal",             precision: 10
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "detail_vouchers", ["guide_id"], name: "index_detail_vouchers_on_guide_id", using: :btree
  add_index "detail_vouchers", ["service_id"], name: "index_detail_vouchers_on_service_id", using: :btree
  add_index "detail_vouchers", ["voucher_id"], name: "index_detail_vouchers_on_voucher_id", using: :btree

  create_table "document_types", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "employees", force: :cascade do |t|
    t.integer  "document_type_id", limit: 4
    t.string   "documentnumber",   limit: 255
    t.string   "name",             limit: 255
    t.string   "lastname",         limit: 255
    t.string   "motherslastname",  limit: 255
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  add_index "employees", ["document_type_id"], name: "index_employees_on_document_type_id", using: :btree

  create_table "guides", force: :cascade do |t|
    t.integer  "atention_id", limit: 4
    t.integer  "service_id",  limit: 4
    t.decimal  "total",                 precision: 10
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
  end

  add_index "guides", ["atention_id"], name: "index_guides_on_atention_id", using: :btree
  add_index "guides", ["service_id"], name: "index_guides_on_service_id", using: :btree

  create_table "pets", force: :cascade do |t|
    t.string   "name",             limit: 255
    t.string   "sex",              limit: 255
    t.datetime "datebirth"
    t.string   "color",            limit: 255
    t.text     "allergies",        limit: 65535
    t.string   "chroniccondition", limit: 255
    t.string   "observation",      limit: 255
    t.integer  "customer_id",      limit: 4
    t.integer  "species_id",       limit: 4
    t.integer  "breed_id",         limit: 4
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
  end

  add_index "pets", ["breed_id"], name: "index_pets_on_breed_id", using: :btree
  add_index "pets", ["customer_id"], name: "index_pets_on_customer_id", using: :btree
  add_index "pets", ["species_id"], name: "index_pets_on_species_id", using: :btree

  create_table "product_types", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "products", force: :cascade do |t|
    t.integer  "product_type_id", limit: 4
    t.string   "name",            limit: 255
    t.decimal  "saleprice",                   precision: 10
    t.integer  "provider_id",     limit: 4
    t.datetime "created_at",                                 null: false
    t.datetime "updated_at",                                 null: false
  end

  add_index "products", ["product_type_id"], name: "index_products_on_product_type_id", using: :btree
  add_index "products", ["provider_id"], name: "index_products_on_provider_id", using: :btree

  create_table "providers", force: :cascade do |t|
    t.string   "name",          limit: 255
    t.string   "streetaddress", limit: 255
    t.string   "phone",         limit: 255
    t.string   "postalcode",    limit: 255
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "sellers", force: :cascade do |t|
    t.integer  "employee_id", limit: 4
    t.integer  "user_id",     limit: 4
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  add_index "sellers", ["employee_id"], name: "index_sellers_on_employee_id", using: :btree
  add_index "sellers", ["user_id"], name: "index_sellers_on_user_id", using: :btree

  create_table "service_types", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "services", force: :cascade do |t|
    t.integer  "service_type_id", limit: 4
    t.string   "name",            limit: 255
    t.decimal  "saleprice",                   precision: 10
    t.datetime "created_at",                                 null: false
    t.datetime "updated_at",                                 null: false
  end

  add_index "services", ["service_type_id"], name: "index_services_on_service_type_id", using: :btree

  create_table "species", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "user_types", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name",            limit: 255
    t.string   "email",           limit: 255
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.string   "password_digest", limit: 255
    t.string   "remember_digest", limit: 255
    t.integer  "user_type_id",    limit: 4
  end

  add_index "users", ["user_type_id"], name: "index_users_on_user_type_id", using: :btree

  create_table "veterinary_appointments", force: :cascade do |t|
    t.integer  "customer_id", limit: 4
    t.integer  "pet_id",      limit: 4
    t.datetime "date"
    t.string   "note",        limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.boolean  "status",      limit: 1
  end

  add_index "veterinary_appointments", ["customer_id"], name: "index_veterinary_appointments_on_customer_id", using: :btree
  add_index "veterinary_appointments", ["pet_id"], name: "index_veterinary_appointments_on_pet_id", using: :btree

  create_table "voucher_types", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "vouchers", force: :cascade do |t|
    t.integer  "voucher_type_id", limit: 4
    t.string   "serialnumber",    limit: 255
    t.string   "vouchernumber",   limit: 255
    t.integer  "atention_id",     limit: 4
    t.integer  "customer_id",     limit: 4
    t.integer  "pet_id",          limit: 4
    t.decimal  "total",                       precision: 10
    t.integer  "seller_id",       limit: 4
    t.datetime "created_at",                                 null: false
    t.datetime "updated_at",                                 null: false
  end

  add_index "vouchers", ["atention_id"], name: "index_vouchers_on_atention_id", using: :btree
  add_index "vouchers", ["customer_id"], name: "index_vouchers_on_customer_id", using: :btree
  add_index "vouchers", ["pet_id"], name: "index_vouchers_on_pet_id", using: :btree
  add_index "vouchers", ["seller_id"], name: "index_vouchers_on_seller_id", using: :btree
  add_index "vouchers", ["voucher_type_id"], name: "index_vouchers_on_voucher_type_id", using: :btree

  add_foreign_key "atentions", "customers"
  add_foreign_key "atentions", "pets"
  add_foreign_key "atentions", "veterinary_appointments"
  add_foreign_key "breeds", "species"
  add_foreign_key "consumptions", "atentions"
  add_foreign_key "consumptions", "guides"
  add_foreign_key "consumptions", "services"
  add_foreign_key "customers", "document_types"
  add_foreign_key "detail_guides", "guides"
  add_foreign_key "detail_guides", "products"
  add_foreign_key "detail_vouchers", "guides"
  add_foreign_key "detail_vouchers", "services"
  add_foreign_key "detail_vouchers", "vouchers"
  add_foreign_key "employees", "document_types"
  add_foreign_key "guides", "atentions"
  add_foreign_key "guides", "services"
  add_foreign_key "pets", "breeds"
  add_foreign_key "pets", "customers"
  add_foreign_key "pets", "species"
  add_foreign_key "products", "product_types"
  add_foreign_key "products", "providers"
  add_foreign_key "sellers", "employees"
  add_foreign_key "sellers", "users"
  add_foreign_key "services", "service_types"
  add_foreign_key "users", "user_types"
  add_foreign_key "veterinary_appointments", "customers"
  add_foreign_key "veterinary_appointments", "pets"
  add_foreign_key "vouchers", "atentions"
  add_foreign_key "vouchers", "customers"
  add_foreign_key "vouchers", "pets"
  add_foreign_key "vouchers", "sellers"
  add_foreign_key "vouchers", "voucher_types"
end
