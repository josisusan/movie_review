class ReviewsController < ApplicationController
  def index
  end

  def create
    @movie = Movie.find(params[:movie_id])
    @review = @movie.reviews.create(params[:review])
    redirect_to movie_path(@movie)
  end

  def update
  end

  def edit

  end

  def show
  end

  def destroy
  end
end
