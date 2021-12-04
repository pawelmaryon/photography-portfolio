class PhotosController < ApplicationController
  def show
    @photos = HTTParty.get('https://jsonplaceholder.typicode.com/photos?albumId=1')
  end
end
