class AlbumCall

  def initialize(api_call = ApiCall.new)
    @api_call = api_call
  end

  def users_album(user_id = nil)
    Rails.cache.fetch("albums/user/#{user_id}", expires_in: 12.hours) do
      albums(user_id).map do |album|
        user = @api_call.users.find {|user| user['id'] == album['userId'] }
        thumbnail = @api_call.photos_collection.find {|photo| photo['albumId'] == album['id'] }
        album.merge(username: user["username"], thumbnail_url: thumbnail["thumbnailUrl"])
      end
    end
  end

  def album_item(id)
      photos.each  do |photo|
        photo["title"] 
        all_albums.each do | album_item | 
          if photo["albumId"] == album_item["userId"]
            photo["title"]
          end
        end
      end
  end



  private
  def all_albums
    all_albums = @api_call.albums
  end

  def users
    users = @api_call.users
  end

  def photos
    photos = @api_call.photos_collection
  end

  def albums(user_id)
    albums = @api_call.albums
    user_id ? albums.select {|item| item['userId'] == user_id.to_i } : albums

  end

  def single_album(id)
    single_album = @api_call.albums
    id ? single_album.each {|album| album["id"] == id } : single_album
  end
end