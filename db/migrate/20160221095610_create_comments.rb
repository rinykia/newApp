class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :title
      t.string :text
      t.string :name
      t.string :email

      t.timestamps null: false
    end
  end
end
