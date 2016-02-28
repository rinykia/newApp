class AlbumDecorator < Draper::Decorator
  
  delegate_all
  decorates Album

  def cover
    Photo.where(album_id: self.id, cover: true).first
  end

end
