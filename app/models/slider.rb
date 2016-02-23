class Slider < ActiveRecord::Base
  mount_uploader :slide, SlideUploader
  NUMBERS = (0..3).to_a
  validates :number, inclusion: NUMBERS
end
