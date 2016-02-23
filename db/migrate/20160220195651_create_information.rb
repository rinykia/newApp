class CreateInformation < ActiveRecord::Migration
  def change
    create_table :information do |t|
      t.string :title
      t.string :article
      t.text :description
      t.string :picture
      
      t.timestamps null: false
    end
  end
end
