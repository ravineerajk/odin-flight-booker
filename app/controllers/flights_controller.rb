class FlightsController < ApplicationController
  def index
    # Retrieve all airports for the search form dropdowns
    @airports = Airport.all
    @num_tickets = params[:num_tickets]

    # Handle search parameters if present
    if params[:departure_airport_id] && params[:arrival_airport_id] && params[:date]
      date = Date.parse(params[:date])
      # Narrow down the search to the specific day regardless of time
      start_datetime = date.beginning_of_day
      end_datetime = date.end_of_day

      @flights = Flight.where(departure_airport_id: params[:departure_airport_id],
                              arrival_airport_id: params[:arrival_airport_id],
                              start_datetime: start_datetime..end_datetime)
    else
      @flights = []
    end
  end
end