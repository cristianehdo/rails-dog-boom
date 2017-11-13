class CreateServices < ActiveRecord::Migration[5.1]
  def change
    create_table :services do |t|
      t.references :user, foreign_key: true
      t.string :name
      t.string :category
      t.text :description

      t.timestamps
    end
  end
end
