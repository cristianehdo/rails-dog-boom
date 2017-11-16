class AddLocationToServices < ActiveRecord::Migration[5.1]
  def change
    add_column :services, :postcode, :string
    add_column :services, :postcode_radius, :integer
  end
end
