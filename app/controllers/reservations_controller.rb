class ReservationsController < ApplicationController
  before_action :set_trip 
  before_action :set_location
  before_action :set_reservation, only: [:show, :edit, :update, :destroy]

  def index
    @reservations = @trip.reservations
  end

  def show
  end

  def new
    @reservation = @trip.reservations.new
  end

def create
  @reservation = @trip.reservation.new(reservation_params)
  if @reservation.save
    redirect_to trip_reservations_path(@trip)
  else
    render :new
  end
end

  def edit
  end

  def update
    if @reservation.update(reservatio_params)
    redirect_to trip_reservations_path(trip_id)
    else
      render :edit
    end
  end

  def destroy
    @reservation = @trip.reservations.find(params[:id])
    @reservation.destroy
    redirect_to trip_reservations_path(@trip)
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
