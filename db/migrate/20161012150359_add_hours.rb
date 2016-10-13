class AddHours < ActiveRecord::Migration[5.0]
  def change
    add_column :references_vehicle_drivers, :hourStart, :date
    add_column :references_vehicle_drivers, :hourEnd, :date
  end
end
