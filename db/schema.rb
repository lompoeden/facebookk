ActiveRecord::Schema.define(version: 2020_09_15_122747) do
  enable_extension "plpgsql"

  create_table "feeds", force: :cascade do |t|
    t.text "image"
    t.text "feeds"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user.name"
    t.string "title"
    t.string "content"
    t.index ["user_id"], name: "index_feeds_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
  end

  add_foreign_key "feeds", "users"
end
