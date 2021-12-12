class Api::V1::UsersController < Api::V1::BaseController
  def show
    users = ApiCall.new.user(params[:id])
  end
end