class ReviewersController < ApplicationController
  def index
  end

  def new
    @trip = Movie.find(params[:movie_id])
    @reviewer = Reviewer.new
  end

  def create
    @movie = Movie.find(params[:movie_id])
    @review = @movie.reviewers.new(params[:review])
    redirect_to movie_path(@movie)
  end

  def edit
  end

  def show
  end

  def destroy
  end

  def update
  end
end
