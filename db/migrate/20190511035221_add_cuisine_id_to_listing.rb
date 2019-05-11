class AddCuisineIdToListing < ActiveRecord::Migration[5.2]
  def change
    add_column :listings, :cuisine_id, :integer
  end
end