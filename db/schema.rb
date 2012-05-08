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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120403193237) do

  create_table "compiledData", :force => true do |t|
    t.integer "birthDate",          :null => false
    t.integer "classID",            :null => false
    t.integer "ethnicityID",        :null => false
    t.string  "firstName",          :null => false
    t.integer "genderID",           :null => false
    t.integer "gradeID",            :null => false
    t.integer "isActiveYN",         :null => false
    t.string  "lastName",           :null => false
    t.string  "middleName",         :null => false
    t.string  "nickname",           :null => false
    t.string  "password",           :null => false
    t.integer "printBodyCompYN",    :null => false
    t.integer "printSpanishYN",     :null => false
    t.string  "studentNumber",      :null => false
    t.integer "unassignedSchoolID", :null => false
    t.string  "userName",           :null => false
  end

  create_table "data_files", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "name"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
