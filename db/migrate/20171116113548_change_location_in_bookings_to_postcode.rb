class ChangeLocationInBookingsToPostcode < ActiveRecord::Migration[5.1]
  def change
    rename_column :bookings, :location, :postcode
  end
end
