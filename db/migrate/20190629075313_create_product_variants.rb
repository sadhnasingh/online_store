class CreateProductVariants < ActiveRecord::Migration[5.2]
  def change
    create_table :product_variants do |t|
      t.string :name
      t.integer :product_id
      t.string :image

      t.timestamps
    end
  end
end
