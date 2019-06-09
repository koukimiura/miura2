class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @my_area = MyArea.find_by(user_id: @user.id)
  end
  
  def likes
  @user = User.find(params[:id])
  @like = like.find_by(user_id: @user.id)
  end
end
