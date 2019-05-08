class BookingsController < ApplicationController
  authorize_resource
 


  def index
    
    if user_signed_in?  
      @bookings = current_user.bookings
    else 
      @bookings = Booking.all
      @provider = Provider.find(current_provider.id)
      
      array = []
      @array = array
      @bookings.each_with_index do |booking, index|
      if booking.provider_id == current_provider.id
      array << booking.provider_id
      end
      end



   
    end
  end

  def new
    @provider = Provider.find(params[:listing_info][:provider_id])
    
    @user = User.find(current_user[:id])
    @booking = Booking.new
  end

  def show
    @booking = Booking.find(params[:id])

    per_person = Provider.find( @booking.provider_id).cost_per_head
    persons = @booking.persons
    @amount = per_person * persons
  end

  def create
    @booking = Booking.new(booking_params)

    if @booking.save
      redirect_to @booking, info: "Booking created"
    else
      render 'new'
    end


    # @provider = Provider.find(params[:id])
    # @user = User.find(current_user[:id])
    # # provider (id, cost per head, minimum_persons)
    # # user (id, persons, location)
    # # listing id

    # @listing_info = Booking.new(params[:listing_info])
  end

  def destroy
    @booking = Booking.find(params[:id])
    provider_id = @booking.provider_id
    @booking.destroy
    
    redirect_to listing_path(Provider.find(provider_id)), danger: "Booking deleted!! Click on Booking to create a new booking"
  end


  private
  def booking_params
    params.permit(:provider_id, :user_id, :booking_daytime, :persons, :location)
  end
end
