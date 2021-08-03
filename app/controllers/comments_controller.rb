class CommentsController < ApplicationController

    before_action :authenticate_user!, only: [:create]

    def create
        @comment = Comment.new(comment_params)
        if @comment.save
            comment = Comment.find_by(comment_params)
            user = User.find_by(id: comment.user_id)
            render json:{ comment: comment, user: user }
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
