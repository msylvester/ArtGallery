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

ActiveRecord::Schema.define(version: 0) do

  create_table "actors", force: :cascade do |t|
    t.text "name"
  end

  create_table "directors", force: :cascade do |t|
    t.text "name"
    t.text "photo_url"
  end

  create_table "movies", force: :cascade do |t|
    t.text    "title"
    t.integer "year"
    t.text    "plot"
    t.text    "image_url"
    t.integer "director_id"
    t.text    "mpaa"
    t.integer "price"
    t.integer "runtime"
  end

  add_index "movies", ["director_id"], name: "index_movies_on_director_id"

  create_table "roles", force: :cascade do |t|
    t.integer "movie_id"
    t.integer "actor_id"
    t.text    "character_name"
  end

  add_index "roles", ["actor_id"], name: "index_roles_on_actor_id"
  add_index "roles", ["movie_id"], name: "index_roles_on_movie_id"

  create_table "users", force: :cascade do |t|
    t.text "name"
    t.text "email"
    t.text "password"
  end

end
