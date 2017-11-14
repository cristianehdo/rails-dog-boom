class ChangeNametoTitleInServices < ActiveRecord::Migration[5.1]
  def change
    rename_column :services, :name, :title
  end
end
