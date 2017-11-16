class AddCategoryToBookings < ActiveRecord::Migration[5.1]
  def change
    add_column :bookings, :category, :string
  end
end
