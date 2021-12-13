class Api::V1::UsersController < Api::V1::BaseController
  def show
    users = AlbumCall.new.all_users(params[:id])
  end
end