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

ActiveRecord::Schema.define(version: 2021_01_15_033751) do

  create_table "consignees", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "address"
    t.string "name"
    t.integer "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "countries", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "country_id"
    t.string "country_name"
    t.string "flag"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "manifests", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.datetime "arrival_date"
    t.datetime "created_at", null: false
    t.datetime "departure_date"
    t.string "shipping_line"
    t.integer "type"
    t.integer "vessel_id"
    t.string "vessel_name"
    t.string "voyage_number"
    t.datetime "updated_at", null: false
  end

  create_table "shipping_lines", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "s_line_id"
    t.string "s_line_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "vessels", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "flag"
    t.string "serial_no"
    t.integer "sline_id"
    t.string "sline_name"
    t.integer "v_id"
    t.integer "vessel_flag"
    t.string "vessel_gt"
    t.string "vessel_name"
    t.string "vessel_nt"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
