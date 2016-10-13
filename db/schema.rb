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

ActiveRecord::Schema.define(version: 20161012154138) do

  create_table "coupons", force: :cascade do |t|
    t.string   "name"
    t.date     "datestart"
    t.date     "datefinish"
    t.string   "quantity"
    t.string   "state"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "drivers", force: :cascade do |t|
    t.integer  "usuario_id"
    t.string   "name"
    t.string   "identityCard"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.string   "license_file_name"
    t.string   "license_content_type"
    t.integer  "license_file_size"
    t.datetime "license_updated_at"
    t.string   "rut_file_name"
    t.string   "rut_content_type"
    t.integer  "rut_file_size"
    t.datetime "rut_updated_at"
    t.string   "peaceCertificate_file_name"
    t.string   "peaceCertificate_content_type"
    t.integer  "peaceCertificate_file_size"
    t.datetime "peaceCertificate_updated_at"
    t.string   "profilePic_file_name"
    t.string   "profilePic_content_type"
    t.integer  "profilePic_file_size"
    t.datetime "profilePic_updated_at"
    t.string   "licenseBehind_file_name"
    t.string   "licenseBehind_content_type"
    t.integer  "licenseBehind_file_size"
    t.datetime "licenseBehind_updated_at"
    t.string   "email"
    t.string   "onePhone"
    t.string   "twoPhone"
    t.string   "cardNumber"
    t.date     "date"
    t.integer  "code"
    t.index ["usuario_id"], name: "index_drivers_on_usuario_id"
  end

  create_table "profiles", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "references_vehicle_drivers", force: :cascade do |t|
    t.integer  "driver_id"
    t.integer  "usuario_id"
    t.integer  "VehiclePerUsuario_id"
    t.date     "fechaInicio"
    t.date     "fechaFin"
    t.string   "commission"
    t.string   "token"
    t.text     "description"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.date     "hourStart"
    t.date     "hourEnd"
    t.index ["VehiclePerUsuario_id"], name: "index_references_vehicle_drivers_on_VehiclePerUsuario_id"
    t.index ["driver_id"], name: "index_references_vehicle_drivers_on_driver_id"
    t.index ["usuario_id"], name: "index_references_vehicle_drivers_on_usuario_id"
  end

  create_table "usuarios", force: :cascade do |t|
    t.string   "email",                       default: "", null: false
    t.string   "encrypted_password",          default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",               default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
    t.string   "firstName"
    t.string   "lastName"
    t.string   "rol"
    t.string   "identityCard"
    t.string   "cellphone"
    t.string   "language"
    t.string   "paymentOption"
    t.string   "birthdayDate"
    t.string   "expirateMM"
    t.string   "expirateYY"
    t.string   "cvCode"
    t.string   "cuponCode"
    t.string   "pictureProfile_file_name"
    t.string   "pictureProfile_content_type"
    t.integer  "pictureProfile_file_size"
    t.datetime "pictureProfile_updated_at"
    t.index ["email"], name: "index_usuarios_on_email", unique: true
    t.index ["reset_password_token"], name: "index_usuarios_on_reset_password_token", unique: true
  end

  create_table "vehicle_per_usuarios", force: :cascade do |t|
    t.string   "insurance"
    t.string   "propertyCard"
    t.string   "supportToDisable"
    t.string   "certificategases"
    t.string   "colorVehicle"
    t.string   "plateVehicle"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "vehicule_id"
    t.integer  "usuario_id"
    t.index ["usuario_id"], name: "index_vehicle_per_usuarios_on_usuario_id"
    t.index ["vehicule_id"], name: "index_vehicle_per_usuarios_on_vehicule_id"
  end

  create_table "vehicules", force: :cascade do |t|
    t.string   "brand"
    t.string   "model"
    t.string   "capacity"
    t.string   "details"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.string   "picture_file_name"
    t.string   "picture_content_type"
    t.integer  "picture_file_size"
    t.datetime "picture_updated_at"
  end

end
