class AddCuisineToProvider < ActiveRecord::Migration[5.2]
  def change
    add_reference :providers, :cuisine, foreign_key: true
  end
end
