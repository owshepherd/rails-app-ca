class ListingsController < ApplicationController
    def index
        @listings = Listing.all
    end

    def create
      @listing = Listing.new(listing_params)

      if @listing.save
          redirect_to @listing
        else
          render 'new'
        end
    end

    def new
        @listing = Listing.new
        provider = Provider.find(current_provider.id)

        @listing.name = provider.name
        @listing.save
    end

    def show
        @listing = Listing.find(params[:id])
    end

    private
      def listing_params
        params.permit(:name)
      end   
end