class AlbumsController < ApplicationController
  def index
    @photos = HTTParty.get("https://jsonplaceholder.typicode.com/photos#{params[:albumId]}")
    @users = HTTParty.get("https://jsonplaceholder.typicode.com/users/#{params[:id]}")
    @albums = HTTParty.get("https://jsonplaceholder.typicode.com/albums")
  end

  def show
    @album = HTTParty.get("https://jsonplaceholder.typicode.com/albums/#{params[:id]}")
    @photos = HTTParty.get("https://jsonplaceholder.typicode.com/photos#{params[:albumId]}")
    @user = HTTParty.get("https://jsonplaceholder.typicode.com/users/#{params[:id]}")
  end
end
