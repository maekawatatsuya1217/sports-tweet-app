class RelationshipsController < ApplicationController
    before_action :set_user

    def create
        following = current_user.follow(@user)
        if following.save
            flash[:success] = '#{current_user.name}さんをフォローしました。'
            redirect_to @user
        else
            flash.now[:alert] = '#{current_user.name}さんをフォローできませんでした。'
            redirect_to @user
        end
    end

    def destroy
        following = current_user.unfollow(@user)
        if following.destroy
            flash[:alert] = '#{current_user.name}さんのフォローを解除しました。'
            redirect_to @user
        else
            flash[:alert] = '#{current_user.name}さんをフォロー解除できませんでした。'
            redirect_to @user
        end
    end

    private

    def set_user
        @user = User.find(params[:relationships][:follow_id])
    end
end
