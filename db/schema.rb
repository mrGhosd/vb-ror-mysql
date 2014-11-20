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

ActiveRecord::Schema.define(version: 20141119162348) do

  create_table "callbacks", force: true do |t|
    t.string   "call_surname"
    t.string   "call_name"
    t.string   "call_second_name"
    t.string   "call_email"
    t.string   "call_phone"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "contact_informations", force: true do |t|
    t.integer "user_id",                              null: false
    t.text    "actual_adress"
    t.integer "phone_adress"
    t.string  "contact_person_surname",    limit: 50
    t.string  "contact_person_name",       limit: 50
    t.string  "contact_person_secondname", limit: 50
    t.integer "contact_person_phone",      limit: 8
    t.string  "email"
  end

  create_table "contact_messages", force: true do |t|
    t.string   "user_name"
    t.string   "user_email"
    t.string   "user_phone"
    t.text     "user_message"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "contract_documents", force: true do |t|
    t.string   "file_name"
    t.text     "main_text"
    t.boolean  "enabled"
    t.boolean  "contract_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "contribution_accounts", force: true do |t|
    t.integer  "deposit_id",      null: false
    t.integer  "operation_summ",  null: false
    t.boolean  "removed_brought", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "delayed_jobs", force: true do |t|
    t.integer  "priority",   default: 0, null: false
    t.integer  "attempts",   default: 0, null: false
    t.text     "handler",                null: false
    t.text     "last_error"
    t.datetime "run_at"
    t.datetime "locked_at"
    t.datetime "failed_at"
    t.string   "locked_by"
    t.string   "queue"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "delayed_jobs", ["priority", "run_at"], name: "delayed_jobs_priority", using: :btree

  create_table "deposits", force: true do |t|
    t.integer  "user_id",                                 null: false
    t.decimal  "current_amount", precision: 10, scale: 2, null: false
    t.integer  "percent_id",                              null: false
    t.boolean  "response"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "educations", force: true do |t|
    t.text "value", null: false
  end

  create_table "faqs", force: true do |t|
    t.text     "question"
    t.text     "answer"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "feedbacks", force: true do |t|
    t.string   "feedback_author"
    t.text     "feedback_text"
    t.integer  "feedback_for",     default: 0
    t.integer  "feedback_against", default: 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "loan_repayments", force: true do |t|
    t.integer  "loan_id",      null: false
    t.integer  "granted_summ", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "loans", force: true do |t|
    t.integer  "user_id",                                            null: false
    t.decimal  "sum",        precision: 8, scale: 2,                 null: false
    t.datetime "begin_date",                                         null: false
    t.datetime "end_date",                                           null: false
    t.integer  "percent_id"
    t.boolean  "status",                             default: false
    t.boolean  "response"
  end

  create_table "nationalities", force: true do |t|
    t.text "value", null: false
  end

  create_table "partners", force: true do |t|
    t.string   "partner_title"
    t.text     "partner_description"
    t.string   "partner_url"
    t.boolean  "enabled",             default: true
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image"
  end

  create_table "passports", force: true do |t|
    t.integer "user_id",               null: false
    t.integer "pasport_seria"
    t.integer "pasport_number"
    t.date    "pasport_when"
    t.text    "pasport_where"
    t.integer "pasport_code"
    t.text    "definite_registration"
    t.integer "old_pasport_seria"
    t.integer "old_pasport_number"
  end

  create_table "percents", force: true do |t|
    t.float   "value",           null: false
    t.date    "begin_date",      null: false
    t.date    "end_date",        null: false
    t.integer "max_summ",        null: false
    t.integer "min_summ",        null: false
    t.integer "max_time",        null: false
    t.integer "min_time",        null: false
    t.boolean "loan_or_deposit", null: false
  end

  create_table "relashionships", force: true do |t|
    t.text "value", null: false
  end

  create_table "relative_degree", id: false, force: true do |t|
    t.integer "relationship_degree_id", null: false
    t.integer "value",                  null: false
  end

  create_table "relatives", id: false, force: true do |t|
    t.integer "user_id",                       null: false
    t.string  "name",               limit: 50, null: false
    t.string  "surname",            limit: 50, null: false
    t.string  "secondname",         limit: 50, null: false
    t.integer "relative_degree_id",            null: false
    t.integer "phone",                         null: false
  end

  create_table "role_contracts", force: true do |t|
    t.integer "user_id"
    t.integer "rank_id"
    t.integer "post_id"
    t.text    "military_unit"
    t.text    "unit_address"
    t.integer "duty_phone"
  end

  create_table "role_kursants", force: true do |t|
    t.integer "user_id"
    t.string  "univercity_name",  limit: 100
    t.string  "faculty",          limit: 50
    t.integer "course"
    t.date    "graduate_date"
    t.text    "course_post"
    t.boolean "excelent_student"
    t.boolean "debt"
    t.boolean "contract"
    t.integer "duty_phone"
    t.integer "education_phone"
  end

  create_table "role_officers", force: true do |t|
    t.integer "user_id"
    t.integer "post_id"
    t.integer "unit_number"
    t.text    "unit_address"
    t.integer "duty_phone"
    t.integer "rank_id"
  end

  create_table "roles", force: true do |t|
    t.string   "value"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "active",         default: false
    t.boolean  "default_chosen", default: false
  end

  create_table "roles_percents", force: true do |t|
    t.integer "role_id"
    t.integer "percent_id"
  end

  create_table "shares", force: true do |t|
    t.string   "share_title"
    t.text     "share_text"
    t.boolean  "enabled",     default: true
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "specializations", force: true do |t|
    t.text "value", null: false
  end

  create_table "sport_masteries", force: true do |t|
    t.text "value", null: false
  end

  create_table "static_pages", force: true do |t|
    t.string   "title"
    t.string   "url"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "stocks", force: true do |t|
    t.string   "stock_title"
    t.text     "stock_text"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "enabled",     default: true
    t.string   "image"
  end

  create_table "types_of_post", id: false, force: true do |t|
    t.integer "post_id",            null: false
    t.string  "value",   limit: 50, null: false
  end

  create_table "types_of_rank", id: false, force: true do |t|
    t.integer "rank_id",            null: false
    t.string  "value",   limit: 50, null: false
  end

  create_table "user_role", id: false, force: true do |t|
    t.integer "role_id",            null: false
    t.string  "value",   limit: 50, null: false
  end

  create_table "user_role_change", id: false, force: true do |t|
    t.integer "role_id",    null: false
    t.integer "user_id",    null: false
    t.date    "begin_date", null: false
    t.date    "end_date",   null: false
  end

  create_table "users", force: true do |t|
    t.string   "surname",        limit: 50,                    null: false
    t.string   "name",           limit: 50,                    null: false
    t.string   "secondname",     limit: 50,                    null: false
    t.integer  "role_id"
    t.boolean  "sex"
    t.date     "date_of_birth"
    t.text     "place_of_birth"
    t.string   "login",          limit: 50
    t.string   "password",       limit: 50
    t.integer  "session"
    t.string   "contact_phone"
    t.string   "remember_token"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "access_role",               default: "client"
    t.string   "avatar"
  end

  create_table "voen_pasports", force: true do |t|
    t.integer "user_id",           null: false
    t.integer "voen_seria"
    t.integer "voen_number"
    t.text    "voen_where"
    t.date    "voen_when"
    t.integer "nationality_id"
    t.integer "education_id"
    t.integer "relashionship_id"
    t.integer "specialization_id"
    t.integer "sport_mastery_id"
  end

end
