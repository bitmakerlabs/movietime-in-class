class GenresController < ApplicationController

  def index
    @genres = Genre.all
  end

  def show
    @genre = Genre.find(params[:id])
  end

  def new
    @genre = Genre.new
  end

  def create
    @genre = Genre.new
    @genre.name = params[:genre][:name]
    if @genre.save
      redirect_to "/genres"
    else
      render :new
    end
  end

end
