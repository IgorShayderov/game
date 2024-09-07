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

ActiveRecord::Schema[7.0].define(version: 2024_09_07_220919) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "attributes", force: :cascade do |t|
    t.integer "attribute_type", null: false, comment: "Тип атрибута"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "character_attributes", force: :cascade do |t|
    t.bigint "characters_id", null: false, comment: "Связь с персоонажем"
    t.bigint "attributes_id", null: false, comment: "Связь с атрибутом"
    t.integer "count", default: 0, comment: "Количество единиц атрибута"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["attributes_id"], name: "index_character_attributes_on_attributes_id"
    t.index ["characters_id"], name: "index_character_attributes_on_characters_id"
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

  create_table "item_effects", force: :cascade do |t|
    t.bigint "items_id", null: false, comment: "Связь с предметом"
    t.bigint "effects_id", null: false, comment: "Связь с эффектом"
    t.integer "count", default: 0, comment: "Количество единиц эффекта"
    t.string "duration", default: "0", comment: "Длительность эффекта, где 0 - постоянный"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["effects_id"], name: "index_item_effects_on_effects_id"
    t.index ["items_id"], name: "index_item_effects_on_items_id"
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
  end

  create_table "users", force: :cascade do |t|
    t.string "email", limit: 60, null: false, comment: "Email пользователя"
    t.string "phone", limit: 20, default: "", comment: "Телефон пользователя"
    t.string "name", limit: 30, null: false, comment: "Имя пользователя"
    t.string "password_digest", null: false, comment: "Пароль"
    t.integer "role", default: 0, comment: "Роль пользователя"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "character_attributes", "attributes", column: "attributes_id"
  add_foreign_key "character_attributes", "characters", column: "characters_id"
  add_foreign_key "item_effects", "effects", column: "effects_id"
  add_foreign_key "item_effects", "items", column: "items_id"
end
