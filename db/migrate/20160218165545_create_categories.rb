class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :article
      t.string :title
      t.string :quantity
      t.string :price
      t.string :description
      t.string :image, index: true

      t.timestamps null: false
    end
  end
end
