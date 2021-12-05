class AlbumsController < ApplicationController
  require 'json'
  require 'open-uri'
  
  def index
    # @albums = HTTParty.get('https://jsonplaceholder.typicode.com/albums')
    # @photos = HTTParty.get('https://jsonplaceholder.typicode.com/photos?albumId=1')
    url_album = 'https://jsonplaceholder.typicode.com/albums'
    url_photo = 'https://jsonplaceholder.typicode.com/photos?albumId=1'
    url_users = 'https://jsonplaceholder.typicode.com/users'
    album_string = open(url_album).read
    photo_string = open(url_photo).read
    users = open(url_users).read

    @photos = JSON.parse(photo_string)
    @albums = JSON.parse(album_string)
    @users = JSON.parse(users)
    @testing = @albums.zip(@photos)
    @photo = HTTParty.get("https://jsonplaceholder.typicode.com/photos#{params[:albumId]}")

  end

  def show
    @album = HTTParty.get("https://jsonplaceholder.typicode.com/albums/#{params[:id]}")
    @photo = HTTParty.get("https://jsonplaceholder.typicode.com/photos#{params[:albumId]}")
    @user = HTTParty.get("https://jsonplaceholder.typicode.com/users/#{params[:id]}")

  end
end
