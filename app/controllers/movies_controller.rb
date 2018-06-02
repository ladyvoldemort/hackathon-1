class MoviesController < ApplicationController
  before_action :set_movie, only: [:show, :update, :edit, :destroy]

  def index
    @movie = Movie.all
  end

  def show
  end

  def new
    @movie = Movie.new
    render partial: "form"
  end

  def create
    @movie = Movie.new(movie_params)
    if @movie.save
      render json: @movie
    else
      render_error(@movie)
    end
  end

  def update
    if @movie.update(movie_params)
      render json: @movie
    else
      render_error(@movie)
    end
  end

  def edit
    render partial: "form"

  end

  def destroy
    @movie.destroy
    render json: { message: 'removed' }, status: :ok
  end

  def form
    @movie = Movie.new
    render partial: 'form'
  end

  private

  def set_movie
    @movie = Movie.find(params[:id])
  end

  def movie_params
    params.require(:movie).permit(:title, :duration, :genre, :description, :trailer)
  end
  
end
