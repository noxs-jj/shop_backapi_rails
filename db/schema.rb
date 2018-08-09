# frozen_string_literal: true

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

ActiveRecord::Schema.define(version: 20_180_808_215_246) do
  create_table 'baskets', force: :cascade do |t|
    t.string 'reference'
    t.string 'user_uuid'
    t.text 'products'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['reference'], name: 'index_baskets_on_reference', unique: true
    t.index ['user_uuid'], name: 'index_baskets_on_user_uuid', unique: true
  end

  create_table 'products', force: :cascade do |t|
    t.string 'reference'
    t.string 'name'
    t.decimal 'price'
    t.string 'images_preview_url'
    t.text 'images_caroussel'
    t.string 'description'
    t.text 'long_description'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['reference'], name: 'index_products_on_reference', unique: true
  end
end
