class UsersController < ApplicationController
    before_action :authenticate_user!, only: :edit
    before_action :set_user, [:show, :edit, :update]
    before_action :unless, only: :edit

    def show
        @tweets = @user.tweet.with_attached_image.order("created_at DESC")
    end

    def edit
    end

    def update
        if @user.update(user_params)
            redirect_to user_path(@user)
        else
            render :edit
        end
    end

    private

    def user_params
        params.require(:user).permit(:email, :name, :favorite_sport)
    end

    def set_user
        @user = User.find(params[:id])
    end

    def unless
        unless user_signed_in? && current_user.id == @user.id
            redirect_to root_path
        end
    end
end