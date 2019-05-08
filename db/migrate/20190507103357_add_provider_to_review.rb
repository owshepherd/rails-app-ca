class AddProviderToReview < ActiveRecord::Migration[5.2]
  def change
    add_reference :reviews, :provider, foreign_key: true
  end
end
