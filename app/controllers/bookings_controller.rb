class BookingsController < ApplicationController
  authorize_resource
 


  def index
    
    if user_signed_in?  
      @bookings = current_user.bookings
      
     
    else 
      @bookings = Booking.all
      @provider = Provider.find(current_provider.id)
      # tests if current provider has bookings
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

    puts "!!!!!!!!"
    puts params.inspect
    puts "!!!!!!!!"
    @provider = Provider.find(params[:listing_info][:provider_id])

    puts "!!!!!!!!"
    puts params.inspect
    puts "!!!!!!!!"

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
    lat, long = geocoder_logic(params[:location])
    # if address does not exist 
    if lat.nil?
      redirect_to listings_path, danger: "Location incorrect. Please enter valid address"
    elsif
      @booking = Booking.new(booking_params)
      provider = @booking.provider_id
      @provider = Provider.find(provider)
      user = @booking.user_id
      @user = User.find(user)
      @booking.save 
      lat, long = geocoder_logic(params[:location])
      place = Place.new
      place.latitude = lat
      place.longitude = long
      place.booking_id = @booking.id
      place.save
      redirect_to @booking, info: "Booking created"
    else
      render 'new'
    end

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

    # logic for geocode. converts address to lat and long
  def geocoder_logic(address)
    geocode_objects = Geocoder.search(address)
    if geocode_objects.empty?
      return
    end
    geocode_object = geocode_objects.first.coordinates
    lat = geocode_object[0]
    long = geocode_object[1]
    return lat, long
  end 
end
