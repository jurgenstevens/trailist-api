class TrailReviewsController < ApplicationController
    # INDEX route to get all trail reviews
    def index
        trail_reviews = Trail_Review.all
        render json: {
            status: 200,
            trail_reviews: trail_reviews
        }
    end
    
    # SHOW route to get trail reviews by id
    def show
        trail_review = Trail_Review.find(params[:id])
        render json: {
            status: 200,
            trail_review: trail_review
        }
    end

    def create
        @trail_review = Trail.new(trail_params)

        if @trail_review
            render(json: { trail_review: @trail_review}, status: 201)
        else # Unprocessable Entity
            render(json: {trail_review: @trail_review}, status: 422)
        end
    end

    private
    def trail_review_params
        # Returns a sanitized hash of the params with nothing extra
        params.required(:trail).permit(:user_id, :trail_name, :review, :rating)
    end
end