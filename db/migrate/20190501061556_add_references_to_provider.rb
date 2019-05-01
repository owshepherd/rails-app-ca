class AddReferencesToProvider < ActiveRecord::Migration[5.2]
  def change
    add_reference :providers, :listing
  end
end
