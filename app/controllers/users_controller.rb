class UsersController < ApplicationController
    
    def index
        @user = User.all
    end
    
    def show
        user = User.find(params[:id])
        # @image = current_user.image
        @nickname = user.nickname
        # @comment =Comment.find(params[:id])
        # @user = User.find(params[:id])
        # ＠userを優先して使用したいが上手くいくかわからない為@imageと＠nicknameを残す
        @bookreviews = user.bookreview.page(params[:page]).per(5).order("created_at DESC")
    end
end
