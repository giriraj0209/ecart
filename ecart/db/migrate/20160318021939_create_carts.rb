class CreateCarts < ActiveRecord::Migration
  def change
    create_table :carts do |t|
      t.float :unit_price
      t.integer :quantity
      t.references :product, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
