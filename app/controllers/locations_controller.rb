class LocationsController < ApplicationController
  before_action :set_location, only: [:show, :edit, :update, :destroy]

  def index
    @locations = Location.all
  end

  def show
  end

  def new
    @location = Location.new
  end

  def create
    @location = Location.new(location_params)
    if @location.save
      redirect_to location_path(@location)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @location.update(location_params)
      redirect_to @location
    else
      render :edit
    end
  end

  def destroy
    @location.destroy
    redirect_to locations_path
  end

  private
  def set_location
    @location = Location.find(params[:id])
  end
  def location_params
    params.require(:location).permit(:loc_name, :loc_type, :main_activity)
  end
end
