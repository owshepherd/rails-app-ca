class ChangeColumnRefPlaceId < ActiveRecord::Migration[5.2]
  def change
    remove_column :bookings, :place_id
    add_reference :places, :booking, foreign_key: true
  end
end
