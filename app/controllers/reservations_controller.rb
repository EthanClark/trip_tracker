class ReservationsController < ApplicationController
  before_action :set_trip 
  before_action :set_location
  before_action :set_reservation, only: [:show, :edit, :update, :destroy]

  def index
  end

  def show
  end

  def new
  end

  def edit
  end

  private
  def set_reservation
    @reservation = Reservation.find(params[:id])
  end
  def reservation_params
    params.require(:reservation).permit()
  end
  def set_trip
    @trip = Trip.find(params[:trip_id])
  end
  def set_location
    @location = Location.find(params[:location_id])
  end
end
