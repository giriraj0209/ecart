class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :title
      t.string :spec
      t.float :price
      t.string :shipping

      t.timestamps null: false
    end
  end
end
