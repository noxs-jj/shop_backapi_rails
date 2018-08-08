class CreateBaskets < ActiveRecord::Migration[5.2]
  def change
    create_table :baskets do |t|
      t.string :reference
      t.string :user_uuid
      t.text :products

      t.timestamps
    end
    add_index :baskets, :reference, unique: true
    add_index :baskets, :user_uuid, unique: true
  end
end
