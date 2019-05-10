class AddPlaceToBooking < ActiveRecord::Migration[5.2]
  def change
    add_reference :bookings, :place, foreign_key: true
  end
end
