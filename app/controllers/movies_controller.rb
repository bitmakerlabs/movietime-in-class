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
    @movie.genre_id = params[:movie][:genre_id]
    if @movie.save
      redirect_to "/movies"
    else
      render :new
    end
  end

  def edit
    @movie = Movie.find(params[:id])
  end

  def update
    @movie = Movie.find(params[:id])
    @movie.title = params[:movie][:title]
    @movie.year = params[:movie][:year]
    @movie.genre_id = params[:movie][:genre_id]        
    if @movie.save
      redirect_to "/movies"
    else
      render :edit
    end
  end

  def destroy
    @movie = Movie.find(params[:id])
    @movie.destroy
    redirect_to root_path
  end

end
