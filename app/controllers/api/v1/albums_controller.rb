class Api::V1::AlbumsController < Api::V1::BaseController

  def index
    # @photos = HTTParty.get("https://jsonplaceholder.typicode.com/photos#{params[:albumId]}")
    # @users = HTTParty.get("https://jsonplaceholder.typicode.com/users/#{params[:id]}")
    @albums = HTTParty.get("https://jsonplaceholder.typicode.com/albums")

    render json: @albums
    

  end
  def show
    @albums = HTTParty.get("https://jsonplaceholder.typicode.com/albums")
    @album = HTTParty.get("https://jsonplaceholder.typicode.com/albums/#{params[:id]}")
    @users = HTTParty.get("https://jsonplaceholder.typicode.com/users/#{params[:id]}")
    @photos = HTTParty.get("https://jsonplaceholder.typicode.com/photos#{params[:albumId]}")
    render json: @album
  end
end