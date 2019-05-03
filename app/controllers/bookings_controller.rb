class BookingsController < ApplicationController

  def index
    @bookings = current_user.bookings
  end

  def new
    @provider = Provider.find(params[:listing_info][:provider_id])
    
    @user = User.find(current_user[:id])
    @booking = Booking.new
  end

  def show
    @booking = Booking.find(params[:id])
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

  private
  def booking_params
    params.permit(:provider_id, :user_id, :booking_daytime, :persons, :location)
  end
end
