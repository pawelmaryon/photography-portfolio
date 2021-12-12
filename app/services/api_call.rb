class ApiCall
  include HTTParty
  base_uri 'https://jsonplaceholder.typicode.com'
  def photo(photo_id)
    self.class.get("/photos#{photo_id}").as_json 
  end
  def album (album_id = nil)
      self.class.get("/albums/#{album_id}").as_json  
  end

  def user(id) 
      self.class.get("/users/#{id}").as_json
  end

  def albums
    @_albums ||= self.class.get('/albums')
  end

  def users
    @_users ||= self.class.get('/users')
  end

  def photos_collection
    @_photos ||= self.class.get('/photos')
  end
end