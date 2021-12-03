class UsersController < ApplicationController
  def show
   @user = HTTParty.get('https://jsonplaceholder.typicode.com/users/1')
  end
end
