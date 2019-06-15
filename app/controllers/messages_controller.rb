class MessagesController < ApplicationController
    before_action :authenticate_user!, only: [:create, :destroy]
    
    def create
        @message = Message.create(message_params)
        if @message.post_id.present?
            redirect_to post_path(@message.post_id)
            
        else
             redirect_to event_path(@message.event_id)
            
        end
    end
    
    def destroy
        @message = Message.find(params[:id])
        @message.destroy
    
        redirect_to :back
    end
    
    
    private
    
    def message_params
        params.require(:message).permit(:content, :user_id, :post_id, :event_id).merge(user_id: current_user.id)
    end
    
end
