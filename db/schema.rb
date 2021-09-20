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

ActiveRecord::Schema.define(version: 20190320052737) do

  create_table "active_admin_comments", force: :cascade do |t|
    t.string   "namespace",     limit: 255
    t.text     "body",          limit: 65535
    t.integer  "resource_id",   limit: 4
    t.string   "resource_type", limit: 255
    t.integer  "author_id",     limit: 4
    t.string   "author_type",   limit: 255
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  add_index "active_admin_comments", ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id", using: :btree
  add_index "active_admin_comments", ["namespace"], name: "index_active_admin_comments_on_namespace", using: :btree
  add_index "active_admin_comments", ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id", using: :btree

  create_table "admin_users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
  end

  add_index "admin_users", ["email"], name: "index_admin_users_on_email", unique: true, using: :btree
  add_index "admin_users", ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true, using: :btree

  create_table "goals", force: :cascade do |t|
    t.string   "name",                limit: 255
    t.integer  "pageview",            limit: 4
    t.integer  "newuser",             limit: 4
    t.string   "bouncerate",          limit: 255
    t.string   "achieved_pageview",   limit: 255
    t.string   "achieved_newuser",    limit: 255
    t.string   "achieved_bouncerate", limit: 255
    t.integer  "project_id",          limit: 4
    t.integer  "requirement_id",      limit: 4
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
  end

  add_index "goals", ["project_id"], name: "index_goals_on_project_id", using: :btree
  add_index "goals", ["requirement_id"], name: "index_goals_on_requirement_id", using: :btree

  create_table "issues", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.text     "description", limit: 65535
    t.datetime "created_on"
    t.integer  "task_id",     limit: 4
    t.integer  "user_id",     limit: 4
    t.string   "status",      limit: 255
    t.text     "worklog",     limit: 65535
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  add_index "issues", ["task_id"], name: "index_issues_on_task_id", using: :btree
  add_index "issues", ["user_id"], name: "index_issues_on_user_id", using: :btree

  create_table "mocks", force: :cascade do |t|
    t.string   "name",           limit: 255
    t.string   "description",    limit: 255
    t.string   "url",            limit: 255
    t.integer  "project_id",     limit: 4
    t.integer  "requirement_id", limit: 4
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  add_index "mocks", ["project_id"], name: "index_mocks_on_project_id", using: :btree
  add_index "mocks", ["requirement_id"], name: "index_mocks_on_requirement_id", using: :btree

  create_table "platforms", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "projects", force: :cascade do |t|
    t.string   "name",            limit: 255
    t.integer  "user_id",         limit: 4
    t.integer  "platform_id",     limit: 4
    t.boolean  "approval_status"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  add_index "projects", ["platform_id"], name: "index_projects_on_platform_id", using: :btree
  add_index "projects", ["user_id"], name: "index_projects_on_user_id", using: :btree

  create_table "requirements", force: :cascade do |t|
    t.string   "title",                limit: 255
    t.text     "Project_requirements", limit: 65535
    t.datetime "published_at"
    t.integer  "user_id",              limit: 4
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
  end

  add_index "requirements", ["user_id"], name: "index_requirements_on_user_id", using: :btree

  create_table "tasks", force: :cascade do |t|
    t.string   "name",           limit: 255
    t.text     "description",    limit: 65535
    t.datetime "due_date"
    t.integer  "requirement_id", limit: 4
    t.integer  "user_id",        limit: 4
    t.string   "status",         limit: 255
    t.text     "worklog",        limit: 65535
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  add_index "tasks", ["requirement_id"], name: "index_tasks_on_requirement_id", using: :btree
  add_index "tasks", ["user_id"], name: "index_tasks_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "email",      limit: 255
    t.string   "password",   limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_foreign_key "goals", "projects"
  add_foreign_key "goals", "requirements"
  add_foreign_key "issues", "tasks"
  add_foreign_key "issues", "users"
  add_foreign_key "mocks", "projects"
  add_foreign_key "mocks", "requirements"
  add_foreign_key "projects", "platforms"
  add_foreign_key "projects", "users"
  add_foreign_key "requirements", "users"
  add_foreign_key "tasks", "requirements"
  add_foreign_key "tasks", "users"
end
