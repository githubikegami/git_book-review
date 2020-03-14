class UsersController < ApplicationController
    
    def show
        @user = User.find(params[:id])
        @comment = @user.comments
        # ＠userを優先して使用したいが上手くいくかわからない為@imageと＠nicknameを残す
        # @bookreviews = user.bookreview.page(params[:page]).per(5).order("created_at DESC")
    end
end
