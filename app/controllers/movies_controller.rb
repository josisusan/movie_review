class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end
  
  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(params[:movie])
    @movie.save!
    redirect_to movies_path
  end

  def edit
    @movie = Movie.find(params[:id])
  end

  def show
    @movie = Movie.find(params[:id])
  end

  def update
    @movie = Movie.find(params[:id])
    @movie.update_attributes(params[movie])
    redirect_to movies_path
  end

  def destroy
    @movie = Movie.find(params[:id])
    @movie.destroy
    redirect_to movies_path
  end
end
