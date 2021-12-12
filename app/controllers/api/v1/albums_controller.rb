class Api::V1::AlbumsController < Api::V1::BaseController
  def index
    render json: AlbumCall.new.users_album(params[:user_id])
  end

  def show
    render json: AlbumCall.new.album_item(params[:id])
  end
end