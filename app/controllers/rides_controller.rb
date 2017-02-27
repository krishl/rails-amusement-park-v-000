class RidesController < ApplicationController
  def new
    @attraction = Attraction.find_by(id: params[:attraction_id])
    @ride = Ride.create(user_id: current_user.id, attraction_id: @attraction.id)
    flash[:notice] = @ride.take_ride
    redirect_to user_path(current_user)
  end
end
