class ChangeBookingColumn < ActiveRecord::Migration[5.1]
  def change
    remove_column :bookings, :category, :string
    add_reference :bookings, :service, index: true
  end
end
