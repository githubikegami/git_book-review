class BookreviewController < ApplicationController

    def index
        @bookreviews = Bookreview.includes(:user).page(params[:page]).per(12)
    end
    
    def show
        @bookreviews = Bookreview.find(params[:id])
        @comments = @bookreviews.comments.includes(:user)
    end

end
