class PagesController < ApplicationController
    
    def index
        @stories = Story.all.order(created_at: :desc).includes(:user)
    end

    def show
        # @story = current_user.stories.find(params[:id])
    end

    def user

    end
end
