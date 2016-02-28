class SetCover

  def initialize(photo)
    @photo = photo
    @album = photo.album 
  end

  def main
    if Photo.where(album_id: @album.id, cover: true).size > 0
      self.remove_old_cover
    end
    @photo.cover = true
    @photo.save
    "Информация обновлена"
  end

  protected

  def remove_old_cover
    photo = Photo.where(album_id: @album.id, cover: true).first
    photo.cover = false
    photo.save
  end


  def remove_all_covers
    Photo.where(album_id: @album.id, cover: true).each do |image|
      image.cover = false
      image.save
    end  
  end

end  