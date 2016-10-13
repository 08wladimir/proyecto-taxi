class CreateVehicules < ActiveRecord::Migration[5.0]
  def change
    create_table :vehicules do |t|
      t.string :brand
      t.string :model
      t.string :capacity
      t.string :details

      t.timestamps
    end
  end
end
