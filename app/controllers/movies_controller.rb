class MoviesController < ApplicationController

  def index
    @movies = Movie.all
  end

  def show
    @movie = Movie.find(params[:id])
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new
    @movie.title = params[:movie][:title]
    @movie.year = params[:movie][:year]
    if @movie.save
      redirect_to "/movies"
    else
      render :new
    end
  end

end
