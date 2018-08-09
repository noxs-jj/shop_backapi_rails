# frozen_string_literal: true

class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :reference
      t.string :name
      t.decimal :price
      t.string :images_preview_url
      t.text :images_caroussel
      t.string :description
      t.text :long_description

      t.timestamps
    end
    add_index :products, :reference, unique: true
  end
end
