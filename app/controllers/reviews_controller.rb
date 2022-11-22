class ReviewsController < ApplicationController
  def index
    @review = Review.all
    render template: "reviews/index"
  end

  def create
    @review = Review.new(
      reservation_id: params["reservation_id"],
      rating: params[:review][:rating],
      comment: params[:review][:comment],
    )
    @review.save
    if @review.save
      redirect_to "/reviews"
    else render json: { errors: review.errors.full_messages }, status: 418     end
  end

  def new
    @review = Review.new
    render template: "reviews/new"
  end

  def update
    @review = Review.new(
      reservation_id: [:reviews][:reservation_id],
      rating: [:reviews][:rating],
      comment: [:reviews][:comment],
    )
    @review.save

    # redirect_to "/rooms" need to make it redirect to room reviews.
  end

  def edit
    @review = Review.find_by(id: params[:id])
    render template: "reviews/edit"
  end
end
