class ReviewsController < ApplicationController
  def index
    @reviews = Review.all
    render template: "views/review"
  end

  def create
  end

  def update
  end

  def edit
  end
end
