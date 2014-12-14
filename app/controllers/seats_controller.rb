class SeatsController < ApplicationController
	def index
		@seats = Seat.all
		@seat = Seat.new 
		@json = @seats.to_json
	    respond_to do |format|
	      format.html # new.html.erb
	      format.json { render :json => @json }
	    end
	end

	def new
		
	end

	def destroy
		@seat = Seat.find( params[:id] )
		@seat.destroy 
		redirect_to seats_path
	end

	def create
		@seat = Seat.new( seat_params )
		@seat.save 
		redirect_to seats_path 
	end

	def update 
	end
private
	def seat_params
		params.require(:seat).permit( :seat_id, :date, :time, :period )
	end
end

