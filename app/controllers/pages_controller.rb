class PagesController < ApplicationController
    
    def index
        # @stories = Story.all.order(created_at: :desc).includes(:user)
        # @stories = Story.where(status: 'published').order(created_at: :desc).includes(:user)
        @stories = Story.published.with_attached_cover_image.order(created_at: :desc).includes(:user)
        @range = 10

    end

    def show
        # @story = current_user.stories.find(params[:id])
    end

    def user

    end
end
