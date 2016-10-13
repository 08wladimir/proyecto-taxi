class AddColmnPictoVehicle < ActiveRecord::Migration[5.0]
  def change
    add_attachment :vehicules, :picture
  end
end
