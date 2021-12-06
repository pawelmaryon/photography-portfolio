class UsersController < ApplicationController
  
  
  def index
    @users = HTTParty.get("https://jsonplaceholder.typicode.com/users")
  end 
  
  def show
   @user = HTTParty.get("https://jsonplaceholder.typicode.com/users/#{params[:id]}")
   @album = HTTParty.get("https://jsonplaceholder.typicode.com/albums/#{params[:userId]}")
  end
end
