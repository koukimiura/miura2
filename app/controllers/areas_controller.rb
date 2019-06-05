class AreasController < ApplicationController
    
    def create
        @area = Area.find(params[:id])
        @area = Area.new(area_params)
        @my_area = My_area.new(area_id: @area.id, user_id: :@user.id).merge(:user_id => @user.id)
        if @area.save && @my_area.save
      else 
          flash[:alert] = "アカウントが作成できませんでした。"
      end
    end
end

 private
 def area_params
     params.require(:area).permit(:area, :pref)
 end