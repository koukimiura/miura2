class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @chat = Chat.new
    #@my_area = MyArea.find_by(user_id: @user.id)
    #@area = Area.find_by(id: @my_area.area_id)
  end
  
  def likes
  @user = User.find(params[:id])
  @likes = Like.where(user_id: @user.id)
  end
  
  def likes_events
    @user = User.find(params[:id])
    @likes = Like.where(user_id: @user.id)
  end
  
  
  
  def events
    @user = User.find(params[:id])
    
  end
end
