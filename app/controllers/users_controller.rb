class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    #@my_area = User.my_area
  end
end
