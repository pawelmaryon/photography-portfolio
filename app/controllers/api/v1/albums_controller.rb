class Api::V1::AlbumsController < Api::V1::BaseController
  def index
    render json: AlbumCall.new.albums_hash_array(params[:user_id])
  end

  def show
    render json: ApiCall.new.photos(params[:id])
  end
end