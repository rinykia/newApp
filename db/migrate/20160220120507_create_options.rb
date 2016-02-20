class CreateOptions < ActiveRecord::Migration
  def change
    create_table :options do |t|
      t.integer :category_id
      t.string :title
      t.string :quantity
      t.decimal :price, precision: 8, scale: 2
     
      t.timestamps null: false
    end
  end
end
