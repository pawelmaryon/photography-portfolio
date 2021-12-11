class AlbumCall

  def initialize(api_service = ApiCall.new)
    @api_service = api_service
  end

  def albums_hash_array(user_id = nil)
    Rails.cache.fetch("ulbums/user/#{user_id}", expires_in: 10.minutes) do
      albums(user_id).map do |album|
        user = @api_service.users.find {|user| user['id'] == album['userId'] }
        thumbnail = @api_service.photos.find {|photo| photo['albumId'] == album['id'] }
        album.merge("username" => user['name'], "thumbnail_url" => thumbnail['thumbnailUrl'])
      end
    end
  end

  private

  def albums(user_id)
    albums = @api_service.albums
    user_id ? albums.select {|item| item['userId'] == user_id.to_i } : albums
  end
end