class Api::V1::UsersController < Api::V1::BaseController
  def show
    user = ApiCall.new.user([:id].to_i)
  end
end