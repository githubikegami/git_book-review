class BookreviewController < ApplicationController

    def index
        @bookreviews = Bookreview.order("created_at DESC").page(params[:page]).per(12)
    end
    
    def show
    end
    
end
