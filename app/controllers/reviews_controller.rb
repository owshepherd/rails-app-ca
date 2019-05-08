class ReviewsController < ApplicationController

  def edit
    @listing = Listing.find(params[:listing_id])
    @review = @listing.reviews.find(params[:id])
    
    if user_signed_in? && (review.user_id == current_user.id)
    link_to 'Edit Review', edit_listing_review_path(@listing, review)
    end

  end

  def update
    @listing = Listing.find(params[:listing_id])
    @review = @listing.reviews.find(params[:id])

    if @listing.reviews.update(review_params)
      redirect_to listing_path(@listing), info: "Review updated !!"
    else
      render 'edit'
    end
    
  end


  def create
    @listing = Listing.find(params[:listing_id])
    @review = @listing.reviews.create(review_params)
      if @review.errors.any?
        redirect_to listing_path(@listing), danger: "Error in form !!"
      else
        redirect_to listing_path(@listing), info: "Review added"
      end
  end
 

  def destroy
    @listing = Listing.find(params[:listing_id])
    @review = @listing.reviews.find(params[:id])
    @review.destroy
    redirect_to listing_path(@listing)
  end
  
  private
    def review_params
      params.require(:review).permit(:username, :content, :rating, :user_id)
    end



end
