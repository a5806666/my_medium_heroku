class PagesController < ApplicationController
    before_action :find_story, only: [:show]
    def index
        # @stories = Story.all.order(created_at: :desc).includes(:user)
        # @stories = Story.where(status: 'published').order(created_at: :desc).includes(:user)
        @stories = Story.published.with_attached_cover_image.order(created_at: :desc).includes(:user)
        @range = 10

    end

    def show
        
    end

    def user

    end

    private
    def find_story
        @story = Story.friendly.find(params[:story_id])
    end
end
