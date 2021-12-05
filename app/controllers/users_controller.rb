class UsersController < ApplicationController
  
  
  def index
    url_users = 'https://jsonplaceholder.typicode.com/users'
    users = open(url_users).read
    @users = JSON.parse(users)
  end 
  
  def show
   @user = HTTParty.get("https://jsonplaceholder.typicode.com/users/#{params[:id]}")
  end
end
