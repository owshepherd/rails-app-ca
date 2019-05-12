class AddProviderIdToListing < ActiveRecord::Migration[5.2]
  def change
    add_column :listings, :provider_id, :integer

  end
end
