class AddCoverFieldToImage < ActiveRecord::Migration
  def change
    add_column :photos, :cover, :boolean, default: false
  end
end
