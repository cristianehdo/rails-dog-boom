class DeletePetFromBookings < ActiveRecord::Migration[5.1]
  def change
    remove_column :bookings, :pet_id
  end
end
