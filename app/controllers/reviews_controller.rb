class ReviewsController < ApplicationController
    def index
        if params[:movie_title].present?
          @reviews = Review.where(movie_title: params[:movie_title])
        else
          @reviews = Review.all
        end
    end
    
    def new
      @review = Review.new
    end
  
    def create
      @review = Review.new(review_params)
      if @review.save
        redirect_to review_path(@review), notice: 'Review was successfully created.'
      else
        render :new
      end
    end
  
    def show
      @review = Review.find(params[:id])
    end
  
    private
  
    def review_params
      params.require(:review).permit(:movie_title,:user, :rating, :comment)
    end
  end
  