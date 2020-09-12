class LocationsController < ApplicationController
  before_action :set_location, only: [:show, :edit, :update, :destroy]

  def index
  end

  def show
  end

  def new
  end

  def edit
  end

  private
  def set_location
    @location = Location.find(params[:id])
  end
  def location_params
    params.require(:location).permit(:name)
  end
end
