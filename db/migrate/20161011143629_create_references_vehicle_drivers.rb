class CreateReferencesVehicleDrivers < ActiveRecord::Migration[5.0]
  def change
    create_table :references_vehicle_drivers do |t|
      t.references :driver, foreign_key: true
      t.references :usuario, foreign_key: true
      t.references :VehiclePerUsuario, foreign_key: true
      t.date :fechaInicio
      t.date :fechaFin
      t.string :commission
      t.string :token
      t.text :description

      t.timestamps
    end
  end
end
