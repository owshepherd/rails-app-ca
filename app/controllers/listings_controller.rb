class ListingsController < ApplicationController
  authorize_resource
  def index
      @listings = Listing.all
  end

  def show
    @listing = Listing.find(params[:id])
    @provider = Provider.find(params[:id])
  end

  def new
    @listing = Listing.new
    @provider = Provider.find(current_provider.id)

    @listing.name = @provider.name
    @listing.save
  end

  def edit
    @listing = Listing.find(params[:id])
  end

  def create
    @listing = Listing.new(listing_params)

    if @listing.save
      redirect_to @listing
    else
      render 'new'
    end
  end

  def update
    @listing = Listing.find(params[:id])

    if @listing.update(listing_params)
      redirect_to @listing, info: "Listing updated !!"
    else
      render 'edit'
    end
  end

  def destroy
    @listing = Listing.find(params[:id])
    @listing.destroy
  
    redirect_to listings_path, danger: "Listing deleted !!"
  end

  private
  def listing_params
    params.permit(:name)
  end   
end