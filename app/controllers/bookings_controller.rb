class BookingsController < ApplicationController
  def new
    # Assuming booking will require user information next
    @flight = Flight.find(params[:flight_id])
    @num_tickets = params[:num_tickets].to_i
    # Setup for new booking will go here
  end
end
