# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2024_09_28_211804) do
  # These are extensions that must be enabled in order to support this database
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
    t.string "service_name", null: false
    t.bigint "byte_size", null: false
    t.string "checksum"
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "character_peculiarities", force: :cascade do |t|
    t.bigint "character_id", null: false, comment: "Связь с персоонажем"
    t.bigint "peculiarity_id", null: false, comment: "Связь с атрибутом"
    t.integer "count", default: 0, comment: "Количество единиц атрибута"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["character_id"], name: "index_character_peculiarities_on_character_id"
    t.index ["peculiarity_id"], name: "index_character_peculiarities_on_peculiarity_id"
  end

  create_table "characters", force: :cascade do |t|
    t.string "name", null: false, comment: "Имя персоонажа"
    t.integer "money", default: 0, comment: "Количество денег"
    t.integer "health", default: 0, comment: "Здоровье персоонажа"
    t.integer "damage", default: 0, comment: "Наносимый урон"
    t.integer "armour", default: 0, comment: "Защита"
    t.integer "evasion", default: 0, comment: "Уворот"
    t.integer "crittical_chance", default: 0, comment: "Шанс на критический удар"
    t.integer "crittical_damage", default: 0, comment: "Сила критического урона"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "effects", force: :cascade do |t|
    t.integer "effect_type", null: false, comment: "Тип эффекта (добавляет, убавляет и тд)"
    t.integer "unit", null: false, comment: "Единица эффекта (урон, защита)"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "images", force: :cascade do |t|
    t.string "name", null: false, comment: "Наименование изображения"
    t.string "imageable_type"
    t.bigint "imageable_id", comment: "Полиморфная связь с изображением"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["imageable_type", "imageable_id"], name: "index_images_on_imageable"
  end

  create_table "items", force: :cascade do |t|
    t.string "name", null: false, comment: "Наименование предмета"
    t.text "description", default: "", comment: "Описание предмета"
    t.integer "price", default: 0
    t.integer "item_type", default: 0, comment: "Тип предемета (обычный, квестовый и тд)"
    t.integer "item_kind", null: false, comment: "Вид предмета (оружие, доспех и тд)"
    t.integer "appliance", default: 0, comment: "Применимость предмета (поглощаемый, временный, постоянный и тд)"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "tier", default: 0, comment: "Уровень предемета (обычный, легендарный и тд)"
  end

  create_table "items_effects", force: :cascade do |t|
    t.bigint "item_id", null: false, comment: "Связь с предметом"
    t.bigint "effect_id", null: false, comment: "Связь с эффектом"
    t.integer "count", default: 0, comment: "Количество единиц эффекта"
    t.string "duration", default: "0", comment: "Длительность эффекта, где 0 - постоянный"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["effect_id"], name: "index_items_effects_on_effect_id"
    t.index ["item_id"], name: "index_items_effects_on_item_id"
  end

  create_table "peculiarities", force: :cascade do |t|
    t.integer "kind", null: false, comment: "Тип атрибута"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", null: false, comment: "Email пользователя"
    t.string "phone", default: "", comment: "Телефон пользователя"
    t.string "name", null: false, comment: "Имя пользователя"
    t.string "password_digest", comment: "Пароль"
    t.integer "role", default: 0, comment: "Роль пользователя"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
  add_foreign_key "character_peculiarities", "characters"
  add_foreign_key "character_peculiarities", "peculiarities"
  add_foreign_key "items_effects", "effects"
  add_foreign_key "items_effects", "items"
end
