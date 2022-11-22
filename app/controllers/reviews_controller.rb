class ReviewsController < ApplicationController
  def index
    @reviews = Review.all
    render template: "views/review"
  end

  def create
    @reviews = Review.new(
      reservation_id: params[:reservation_id],
      rating: params[:rating],
      comment: params[:comment],
    )
    @reviews.save
    redirect_to "/"
  end

  def update
    @reviews = Review.new(
      reservation_id: params[:reservation_id],
      rating: params[:rating],
      comment: params[:comment],
    )
    @reviews.save

    # redirect_to "/rooms" need to make it redirect to room reviews.
  end

  def edit
    @reviews = Review.find_by(id: params[:id])
    render template: "reviews/edit"
  end
end
