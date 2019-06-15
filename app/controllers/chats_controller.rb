class ChatsController < ApplicationController
     before_action :authenticate_user!, only: [:index, :show,:create, :destroy]
    def index
        @chats = Chat.all
    end
    
    def show
        @chat = Chat.find(params[:id])
        
    end
    
    def create
        @chat = Chat.new(params_chat)
        if @chat.save
            flash[:notice] = 'チャットボックスを作成しました。'
            redirect_to @chat
        else
            flash[:alert] = 'チャットボックスの作成に失敗しました。'
            render 'users/show'
        end
    end
    
    def destroy
        @chat = Chat.find(params[:id])
        @chat.destroy
        redirect_to :back
    end
    
    private
    
    def params_chat
       params.require(:chat).permit(name) 
    end
end
