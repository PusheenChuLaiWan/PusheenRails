class SeatsController < ApplicationController
	require 'time' 


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
		@seat.name = current_user.name 
		t = Time.parse( @seat.time ) 
		t = t + 15

		@seat.dead = t.strftime("%H:%M:%S")
		t = t + 10 ; 
		@seat.time = t.strftime("%H:%M:%S")

		@seat.save 
		respond_to do |format|
          format.html { redirect_to seats_path }
          format.json { render json: @seat.to_json, status: :created , :location => @seat}
      	end
	end

	def update 
	end
private
	def seat_params
		params.require(:seat).permit( :seat_id, :date, :time, :period )
	end
end

