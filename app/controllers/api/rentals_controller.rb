class Api::RentalsController < ApplicationController
  before_action :set_rental, only: [:show, :update, :destroy]

  def index
    @rentals = User.find(params[:user_id]).rentals
    render json: @rentals
  end

  def show
    @user = User.find(params[:user_id])
    @rental = @user.rentals.find(params[:id])
    render json: @rental
  end

  def create
    @user = User.find(params[:user_id])
    @rental = @user.rentals.new(rental_params)

    if @rental.save
      render json: @rental, status: :created
    else
      render json: @rental.errors, status: :unprocessable_entity
    end
  end

  def update
    if @rental.update(rental_params)
      render json: @rental
    else
      render json: @rental.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @rental.destroy
  end

  private

  def set_rental
    @user = User.find(params[:user_id])
    @rental = @user.rentals.find(params[:id])
  end

  def rental_params
    params.require(:rental).permit(:user_id, :movie_id)
  end
end
