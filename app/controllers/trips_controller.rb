class TripsController < ApplicationController
  before_action :set_trip, only: [:show, :edit, :update, :destroy]

  def index
  end

  def show
  end

  def new
  end

  def edit
  end

  private
  def set_trip
    @trip = Trip.find(params[:id])
  end
  def trip_params
    params.require(:trip).permit(:loc_name)
  end
end
