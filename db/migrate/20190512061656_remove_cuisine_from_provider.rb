class RemoveCuisineFromProvider < ActiveRecord::Migration[5.2]
  def change
    remove_column :providers, :cuisine_id
  end
end
