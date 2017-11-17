class DeleteRAdiousFroomServices < ActiveRecord::Migration[5.1]
  def change
    remove_column :services, :postcode_radius
  end
end
