class AddAvatarToPhotos < ActiveRecord::Migration
  def change
    add_column :photos, :avatar, :string, index: true
  end
end
