class FlightsController < ApplicationController
    # def index
    #     @flights = if params[:search]
    #         Flight.where("departure_airport_id = ? OR arrival_airport_id = ?", params[:search], params[:search])
    #     else    
    #         Flight.all
    #     end
    # end

    def index
        @airports = Airport.all
        @passenger_options = [1, 2, 3, 4]
        @flight_dates = Flight.pluck(:start_datetime).map { |datetime| datetime.to_date }.uniq.sort
    
        @flights = Flight.all
    
        @flights = @flights.where(departure_airport_id: params[:departure_airport]) if params[:departure_airport].present?
        @flights = @flights.where(arrival_airport_id: params[:arrival_airport]) if params[:arrival_airport].present?
        @flights = @flights.where(passenger_count: params[:passenger_count]) if params[:passenger_count].present?
        @flights = @flights.where("DATE(start_datetime) = ?", params[:flight_date]) if params[:flight_date].present?
      end
end
