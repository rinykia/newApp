class CreateSliders < ActiveRecord::Migration
  def change
    create_table :sliders do |t|
      t.string :slide, index: true
      t.string :more_url
      t.string :article
      t.integer :number

      t.timestamps null: false
    end
  end
end
