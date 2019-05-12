class MoveCuisineIdToProvider < ActiveRecord::Migration[5.2]
  def change
    add_column :providers, :cuisine_id, :integer
    Listing.all.each do |l|
      l.provider.update_attributes(cuisine_id: l.cuisine_id)
    end
    remove_column :listings, :cuisine_id
  end
end
