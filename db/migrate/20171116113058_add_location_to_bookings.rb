class AddLocationToBookings < ActiveRecord::Migration[5.1]
  def change
    add_column :bookings, :location, :string
  end
end
