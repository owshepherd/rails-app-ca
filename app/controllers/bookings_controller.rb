class BookingsController < ApplicationController

  def new
    @provider = Provider.find(params[:listing_info][:provider_id])
    
    @user = User.find(current_user[:id])
    @booking = Booking.new
  end

  def show
    @listing = Listing.find(params[:id])
    @provider = Provider.find(params[:id])
    @user = User.find(params[:id])
  end

  def create
    @provider = provider.find(params[:id])
    @user = User.find(current_user[:id])
    # provider (id, cost per head, minimum_persons)
    # user (id, persons, location)
    # listing id

    @listing_info = Booking.new(params[:listing_info])
  end

  def index
  end
end
