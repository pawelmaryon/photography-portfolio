class ApiCall
  include HTTParty
  base_uri 'https://jsonplaceholder.typicode.com'

  def photos(album_id)
      self.class.get("/albums/#{album_id}/photos").as_json  
  end

  def user(user_id) 
      self.class.get("/users/#{user_id}").as_json
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