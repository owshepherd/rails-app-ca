class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.datetime :booking_daytime
      t.integer :persons
      t.string :location
      t.timestamps
    end
  end
end
