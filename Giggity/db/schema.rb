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

ActiveRecord::Schema.define(version: 2019_12_04_205823) do

  create_table "agencies", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "agency_artist_songs", force: :cascade do |t|
    t.string "name"
    t.integer "agency_artist_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["agency_artist_id"], name: "index_agency_artist_songs_on_agency_artist_id"
  end

  create_table "agency_artists", force: :cascade do |t|
    t.string "name"
    t.string "genre"
    t.float "fee"
    t.integer "agency_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["agency_id"], name: "index_agency_artists_on_agency_id"
  end

  create_table "agency_gigs", force: :cascade do |t|
    t.string "date"
    t.float "compensation"
    t.integer "venue_id"
    t.integer "agency_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["agency_id"], name: "index_agency_gigs_on_agency_id"
    t.index ["venue_id"], name: "index_agency_gigs_on_venue_id"
  end

  create_table "local_artist_songs", force: :cascade do |t|
    t.string "name"
    t.integer "local_artist_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["local_artist_id"], name: "index_local_artist_songs_on_local_artist_id"
  end

  create_table "local_artists", force: :cascade do |t|
    t.string "genre"
    t.string "artist_name"
    t.string "username"
    t.string "password_digest"
    t.float "rating"
    t.float "bankroll"
    t.integer "zipcode"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "local_gigs", force: :cascade do |t|
    t.string "date"
    t.float "compensation"
    t.integer "venue_id"
    t.integer "local_artist_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["local_artist_id"], name: "index_local_gigs_on_local_artist_id"
    t.index ["venue_id"], name: "index_local_gigs_on_venue_id"
  end

  create_table "venues", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.string "venue_name"
    t.float "bankroll"
    t.integer "zipcode"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
