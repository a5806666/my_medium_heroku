class Api::StoriesController < Api::BaseController
    before_action :find_story
    def clap
        if user_signed_in?
            @story.increment!(:clap)
            render json: {status: @story.clap}
        else
            render json: {status: 'sign_in_first'}
        end
    end

    def bookmark
        render json: {status: current_user.bookmark!(@story)}
    end

    private
    def find_story
        @story = Story.friendly.find(params[:id])
    end
end
