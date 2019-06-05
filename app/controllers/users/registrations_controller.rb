# frozen_string_literal: true

class Users::RegistrationsController < Devise::RegistrationsController
   before_action :configure_sign_up_params, only: [:create]
   before_action :configure_account_update_params, only: [:update]

  # GET /resource/sign_up
   def new
    @areas = Area.all
    @area = Area.new
    @my_area = MyArea.new
     super
   end

  # POST /resource
   def create
     super
    
   end

  # GET /resource/edit
   def edit
    @areas = Area.all
    @area = Area.new
     super
     @user = User.new
   end

  # PUT /resource
   def update
     super
   end

  # DELETE /resource
   def destroy
     super
   end

  # GET /resource/cancel
  # Forces the session data which is usually expired after sign
  # in to be expired now. This is useful if the user wants to
  # cancel oauth signing in/up in the middle of the process,
  # removing all OAuth session data.
  # def cancel
  #   super
  # end

   protected
   

  # If you have extra params to permit, append them to the sanitizer.
   def configure_sign_up_params
     devise_parameter_sanitizer.permit(:sign_up,    #子モデルをユーザー登録時にいっしょにテーブルへデータを作る
     keys: [:name, :gender, :birthday, :adress, :image, :my_size, :my_shoes_size,
     :my_height, :genre, :my_price, :self_introduction, :attribute ])
    
   end

  # If you have extra params to permit, append them to the sanitizer.
  def configure_account_update_params
     devise_parameter_sanitizer.permit(:account_update, keys: [:name, :gender, :birthday, :adress, :image, :my_size, :my_shoes_size,
     :my_height, :genre, :my_price, :self_introduction, :attribute ])
   end

  # The path used after sign up.
   def after_sign_up_path_for(resource)
  #   super(resource)
   posts_path
   end

  # The path used after sign up for inactive accounts.
  # def after_inactive_sign_up_path_for(resource)
  #   super(resource)
  # end
end
