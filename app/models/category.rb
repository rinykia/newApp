class Category < ActiveRecord::Base
  has_many :options
  mount_uploader :image, ImageUploader
end
