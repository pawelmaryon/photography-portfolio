class AlbumsController < ApplicationController
  def index
    @photos = HTTParty.get("https://jsonplaceholder.typicode.com/photos#{params[:albumId]}")
    @users = HTTParty.get("https://jsonplaceholder.typicode.com/users/#{params[:id]}")
    @albums = HTTParty.get("https://jsonplaceholder.typicode.com/albums")
  end

  def show
    @albums = HTTParty.get("https://jsonplaceholder.typicode.com/albums")
    @album = HTTParty.get("https://jsonplaceholder.typicode.com/albums/#{params[:id]}")
    @users = HTTParty.get("https://jsonplaceholder.typicode.com/users/#{params[:id]}")
    @photos = HTTParty.get("https://jsonplaceholder.typicode.com/photos#{params[:albumId]}")
    render json: @album
  end
end
