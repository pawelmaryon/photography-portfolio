class AlbumsController < ApplicationController
  require 'json'
  require 'open-uri'
  
  def index
    # @albums = HTTParty.get('https://jsonplaceholder.typicode.com/albums')
    # @photos = HTTParty.get('https://jsonplaceholder.typicode.com/photos?albumId=1')
    url_album = 'https://jsonplaceholder.typicode.com/albums'
    url_photo = 'https://jsonplaceholder.typicode.com/photos?albumId=1'
  
    album_string = open(url_album).read
    photo_string = open(url_photo).read
    @albums = JSON.parse(album_string)
    
  end

  def show
    @album = HTTParty.get("https://jsonplaceholder.typicode.com/albums/#{params[:id]}")
  end
end
