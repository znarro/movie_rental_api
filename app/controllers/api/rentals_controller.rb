class Api::RentalsController < ApplicationController
  before_action :set_movie, only: [:show, :edit, :update, :destroy]

  def index
    @user = User.find(params[:user_id])
    @movies = @user.movies
    render json: @movies
  end

  def show
    render json: @movie
  end

  def create
    @user = User.find(params[:user_id])
    @movie = Movie.where(user_id: nil).find_by(id: movie_params[:movie_id])

    if @movie.blank?
      render json: 'This movie is rented!'
    else
      if @movie.update(user: @user)
        render json: @movie
      else
        render json: @movie.errors, status: :unprocessable_entity
      end
    end
  end

  def destroy
    @movie.update(user_id: nil)
  end

  private

  def set_movie
    @user = User.find(params[:user_id])
    @movie = @user.movies.find(params[:id])
  end

  def movie_params
    params.require(:rental).permit(:movie_id)
  end
end
