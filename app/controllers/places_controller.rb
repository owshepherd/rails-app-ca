class PlacesController < ApplicationController
  before_action :set_place, only: [:show, :edit, :update, :destroy]
  load_and_authorize_resource

  # GET /places
  # GET /places.json
  def index
    @places = Place.all
  end

  # GET /places/1
  # GET /places/1.json
  def show
    place = Place.find(params[:id])
    @booking = Booking.find(place.booking_id)
  end

  # GET /places/new
  def new
    @place = Place.new
  end

  # GET /places/1/edit
  def edit
  end

  # POST /places
  # POST /places.json
  def create
    address = []
    address << params[:place][:street]
    address << params[:place][:city]
    address << params[:place][:state]
    address << params[:place][:country]
    @address = address.compact.join(',')
    results = Geocoder.search(@address)
    var = results.first.coordinates
    lat = var[0]
    long = var[1]
    name = params[:place][:name]
    place = Place.new(place_params)
    place.name = name
    place.latitude = lat
    place.longitude = long
    place.save
    redirect_to place
  end

  # PATCH/PUT /places/1
  # PATCH/PUT /places/1.json
  def update
    respond_to do |format|
      if @place.update(place_params)
        format.html { redirect_to @place, notice: 'Place was successfully updated.' }
        format.json { render :show, status: :ok, location: @place }
      else
        format.html { render :edit }
        format.json { render json: @place.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /places/1
  # DELETE /places/1.json
  def destroy
    @place.destroy
    respond_to do |format|
      format.html { redirect_to places_url, notice: 'Place was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_place
      @place = Place.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def place_params
      params.permit(:name, :street, :city, :state, :country)
    end
end
