class CommentsController < ApplicationController

    before_action :authenticate_user!, only: [:create]

    def create
        @comment = Comment.new(comment_params)
        if @comment.save
            redirect_to tweet_path(@comment.tweet_id)
        else
            @tweet = @comment.tweet
            @comments = @tweet.comments.includes(:user).order("created_at DESC")
            render "tweets/show"
        end
    end

    private

    def comment_params
        params.require(:comment).permit(:text).merge(user_id: current_user.id, tweet_id: params[:tweet_id])
    end
end
