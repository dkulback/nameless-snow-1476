class MechanicsController < ApplicationController
  def index
    @mechanics = Mechanic.all
  end

  def show
    @mechanic = Mechanic.find(params[:id])
    @rides = @mechanic.rides
    @ride = Ride.new
    # @mechanic_ride = MechanicRide.new
  end
end
