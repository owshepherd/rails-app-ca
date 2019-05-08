class AddListingToReview < ActiveRecord::Migration[5.2]
  def change
    add_reference :reviews, :listing, foreign_key: true
  end
end
