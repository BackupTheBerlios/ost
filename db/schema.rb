# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20080827071648) do

  create_table "backlogs", :force => true do |t|
    t.string   "name"
    t.date     "date"
    t.integer  "priority"
    t.text     "description"
    t.boolean  "done"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "bugs", :force => true do |t|
    t.string   "name"
    t.integer  "component_id"
    t.integer  "priority"
    t.date     "date"
    t.boolean  "fixed"
    t.text     "description"
    t.integer  "status"
    t.integer  "employee_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "categories", :force => true do |t|
    t.string   "name"
    t.string   "handle"
    t.integer  "color"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "components", :force => true do |t|
    t.string   "name"
    t.string   "handle"
    t.text     "description"
    t.integer  "employee_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "empediments", :force => true do |t|
    t.string   "name"
    t.integer  "priority"
    t.text     "description"
    t.text     "ideas"
    t.boolean  "solved"
    t.integer  "sprint_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "employees", :force => true do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.string   "handle"
    t.float    "workinghours"
    t.float    "vacationdays"
    t.integer  "team_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sprints", :force => true do |t|
    t.string   "name"
    t.date     "startdate"
    t.date     "enddate"
    t.text     "description"
    t.boolean  "actualsprint"
    t.float    "holydays"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "steps", :force => true do |t|
    t.date     "date"
    t.float    "hours"
    t.float    "percentage"
    t.integer  "employee_id"
    t.integer  "subtask_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "subtasks", :force => true do |t|
    t.string   "name"
    t.integer  "priority"
    t.float    "hourguess"
    t.float    "riskguess"
    t.text     "description"
    t.integer  "task_id"
    t.integer  "employee_id"
    t.integer  "category_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tasks", :force => true do |t|
    t.string   "name"
    t.integer  "priority"
    t.text     "description"
    t.integer  "sprint_id"
    t.integer  "backlog_id"
    t.integer  "bug_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "teams", :force => true do |t|
    t.string   "name"
    t.string   "handle"
    t.integer  "color"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
