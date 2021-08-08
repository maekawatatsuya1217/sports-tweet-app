class TweetsController < ApplicationController
    before_action :authenticate_user!, only: [:new, :create, :edit, :destroy]
    before_action :tweet_build, only: [:show, :edit, :update, :destroy]
    before_action :unless, only: [:edit, :update, :destroy]
    before_action :search_tweet, only: [:index, :search]

    def index
        @tweets = Tweet.includes(:user).with_attached_image.order('created_at DESC')
        set_tweet_column
    end

    def new
        @tweet = Tweet.new
    end

    def create
        @tweet = Tweet.new(tweet_params)
        if @tweet.save
            redirect_to tweets_path
        else
            render :new
        end
    end

    def show
        @comment = Comment.new
        @comments = @tweet.comments.includes(:user).order(id: "DESC")
    end

    def edit
    end

    def update
        if @tweet.update(tweet_params)
            redirect_to tweet_path(@tweet)
        else
            render :edit
        end
    end

    def destroy
        @tweet.destroy
        redirect_to tweets_path
    end

    def search
        @tweets = @p.result.includes(:user).with_attached_image.order('created_at DESC')
        set_tweet_column
    end

    private

    def tweet_params
        params.require(:tweet).permit(:title, :catch_copy, :article, :category_id, :image).merge(user_id: current_user.id)
    end

    def tweet_build
        @tweet = Tweet.find(params[:id])
    end

    def unless
        unless user_signed_in? && current_user.id == @tweet.user.id
         redirect_to root_path
        end 
    end

    def search_tweet
        @p = Tweet.ransack(params[:q])
    end

    def set_tweet_column
        @tweet_name = Tweet.select("title").distinct
    end
end
