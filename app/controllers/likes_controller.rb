class LikesController < ApplicationController
    before_action :authenticate => [:create, :destroy]
    
    def create
        
        @like = Like.new(like_params)
        if @like.save
            redirect_to @post
        end
        @like = Like.new(like_event_params)
        if @like.save
            redirect_to @event
        end
    end
    
    def destroy
        @post = Post.find_by(user_id: current_user.id, post_id: params[:post_id])
        if @like.destroy
            redirect_to @post
        end
        @like = Like.find_by(user_id: current_user.id, event_id: params[:event_id])
        if @like.save
            redirect_to @event
        end
    end
    
    
    private
    def like_params
        params.require(:like).permit(user_id: current_user.id,  post_id: params[:post_id])
    end
    
    
    def like_event_params
         params.require(:like).permit(user_id: current_user.id,  event_id: params[:event_id])
    end
    
end
