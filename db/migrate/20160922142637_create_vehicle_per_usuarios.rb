class CreateVehiclePerUsuarios < ActiveRecord::Migration[5.0]
  def change
    create_table :vehicle_per_usuarios do |t|
      t.references :vehicule, foreign_key: true
      t.references :usuario, foreign_key: true
      t.string :insurance
      t.string :propertyCard
      t.string :supportToDisable
      t.string :certificategases
      t.string :colorVehicle
      t.string :plateVehicle

      t.timestamps
    end
  end
end
