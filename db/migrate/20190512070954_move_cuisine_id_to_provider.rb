class MoveCuisineIdToProvider < ActiveRecord::Migration[5.2]
  def change
    add_column :providers, :cuisine_id, :integer
    remove_column :listings, :cuisine_id
  end
end
