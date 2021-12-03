class AlbumsController < ApplicationController

  def index
    @albums = HTTParty.get('https://jsonplaceholder.typicode.com/albums')
  end

  def show
    @album = HTTParty.get('https://jsonplaceholder.typicode.com/albums/1')
  end
end
