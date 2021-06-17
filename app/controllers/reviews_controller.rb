class ReviewsController < ApplicationController
    # protect_from_forgery with: :null_session
    helper_method :current_user

    def index
        @reviews = Review.all

        render json: @reviews
        
    end

    def show
        @review = Review.find(params[:id])

        render json: @review
    end

    def create
        @review = Review.new(review_params)
        # @review.user_id = current_user.id
        
        if @review.save
            render json: @review, status: :created, location: @review
        else
            render json: @review.errors, status: :unprocessable_entity
        end
    end


    def update
        if @review.update(review_params)
            @review = Review.find(params[:id])
            render json: @review
        else
            render json: @review.errors, status: :unprocessable_entity
        end
    end

    def destroy
        @review = Review.find(params[:id])
        @review.destroy
    end

    private

    def set_tool
        @review = Review.find(params[:id])
    end

    def review_params
        params.require(:review).permit(:title, :description, :score, :likes, :team_id, :user_id) 
        
    end
    

end