## T2A2 Marketplace Project - Ryan Cook

### R7 - Identification of the problem you are trying to solve by building this particular marketplace app.

Horse riding is a somewhat niche sport and leisure activity. According to Wikipedia, around 400,000 people in Australia ride horses, which makes out to be just over 1% of the population. Unfortunately, it can become quite expensive, especially when you're looking at transportation. You’re not often needing to transport your horse, but when you do, a new horse float starts on average at around AUD $20,000. For most, this is a lot of money to have invested in something that functionally sits there doing nothing for the majority of the time. This marketplace lets people who would otherwise not be able to afford or find horse transport, to have access at a lower price point, or access at all. It also provides a platform for owners of horse floats to generate some extra cash flow at times when they don’t need to use it for themselves.

Put simply, I'm connecting horse float owners with other horse enthusiasts who require the use of horse floats, for the betterment of the community.







```
ActiveRecord::Schema.define(version: 2020_05_14_020731) do

  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "listings", force: :cascade do |t|
    t.bigint "user_id"
    t.string "title"
    t.string "model"
    t.text "description"
    t.bigint "size_id"
    t.string "price"
    t.string "location"
    t.integer "postcode"
    t.date "availability"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["size_id"], name: "index_listings_on_size_id"
    t.index ["user_id"], name: "index_listings_on_user_id"
  end

  create_table "sizes", force: :cascade do |t|
    t.string "size"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "listings", "sizes"
  add_foreign_key "listings", "users"
end
```