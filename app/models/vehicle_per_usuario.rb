class VehiclePerUsuario < ApplicationRecord
  belongs_to :vehicule
  belongs_to :usuario
  
  def nameVehicle
    "#{vehicule.brand} - #{vehicule.model} - #{plateVehicle}"
  end
  
end
