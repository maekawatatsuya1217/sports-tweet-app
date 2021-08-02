class TweetsController < ApplicationController
    before_action :authenticate_user!, only: [:new, :create, :edit, :destroy]
    before_action :tweet_build, only: [:show, :edit, :update, :destroy]
    before_action :unless, only: [:edit, :update, :destroy]

    def index
        @tweets = Tweet.includes(:user).with_attached_image.order('created_at DESC')
    end

    def new
        @tweet = Tweet.new
    end

    def create
        @tweet = Tweet.new(tweet_params)
        if @tweet.save
            redirect_to root_path
        else
            render :new
        end
    end

    def show
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
        redirect_to root_path
    end

    private

    def tweet_params
        params.require(:tweet).permit(:title, :catch_copy, :article, :image).merge(user_id: current_user.id)
    end

    def tweet_build
        @tweet = Tweet.find(params[:id])
    end

    def unless
        unless user_signed_in? && current_user.id == @tweet.user.id
         redirect_to root_path
        end 
    end
end
