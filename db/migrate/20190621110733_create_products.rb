class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.integer :sub_category_id
      t.integer :category_id
      t.string :name
      t.string :image
      t.string :price
      t.string :description
      t.string :full_price

      t.timestamps
    end
  end
end
