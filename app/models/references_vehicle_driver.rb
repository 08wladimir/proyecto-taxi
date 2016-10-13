class ReferencesVehicleDriver < ApplicationRecord
  belongs_to :driver
  belongs_to :usuario
  belongs_to :VehiclePerUsuario
end
