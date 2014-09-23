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

ActiveRecord::Schema.define(version: 20140922225015) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "answers", force: true do |t|
    t.text     "body"
    t.integer  "post_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "answers", ["post_id"], name: "index_answers_on_post_id", using: :btree
  add_index "answers", ["user_id"], name: "index_answers_on_user_id", using: :btree

  create_table "categories", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "favorites", force: true do |t|
    t.integer  "user_id"
    t.integer  "post_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "favorites", ["post_id"], name: "index_favorites_on_post_id", using: :btree
  add_index "favorites", ["user_id"], name: "index_favorites_on_user_id", using: :btree

  create_table "post_tags", force: true do |t|
    t.integer  "tag_id"
    t.integer  "post_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "post_tags", ["post_id"], name: "index_post_tags_on_post_id", using: :btree
  add_index "post_tags", ["tag_id"], name: "index_post_tags_on_tag_id", using: :btree

  create_table "posts", force: true do |t|
    t.text     "question"
    t.integer  "user_id"
    t.integer  "category_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "post_pic_file_name"
    t.string   "post_pic_content_type"
    t.integer  "post_pic_file_size"
    t.datetime "post_pic_updated_at"
    t.string   "temptags"
  end

  add_index "posts", ["category_id"], name: "index_posts_on_category_id", using: :btree
  add_index "posts", ["user_id"], name: "index_posts_on_user_id", using: :btree

  create_table "tags", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_tag_score_votes", force: true do |t|
    t.integer  "user_tag_score_id"
    t.integer  "vote_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "user_tag_score_votes", ["user_tag_score_id"], name: "index_user_tag_score_votes_on_user_tag_score_id", using: :btree
  add_index "user_tag_score_votes", ["vote_id"], name: "index_user_tag_score_votes_on_vote_id", using: :btree

  create_table "user_tag_scores", force: true do |t|
    t.integer  "tag_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "score"
  end

  add_index "user_tag_scores", ["tag_id"], name: "index_user_tag_scores_on_tag_id", using: :btree
  add_index "user_tag_scores", ["user_id"], name: "index_user_tag_scores_on_user_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "email"
    t.string   "username"
    t.string   "fname"
    t.string   "lname"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "profile_pic_file_name"
    t.string   "profile_pic_content_type"
    t.integer  "profile_pic_file_size"
    t.datetime "profile_pic_updated_at"
    t.boolean  "verified_user",            default: false
    t.boolean  "deactivated_user",         default: false
  end

  create_table "votes", force: true do |t|
    t.integer  "user_id"
    t.integer  "answer_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "votes", ["answer_id"], name: "index_votes_on_answer_id", using: :btree
  add_index "votes", ["user_id"], name: "index_votes_on_user_id", using: :btree

end
