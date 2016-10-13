class ProfileController < ApplicationController
    
    def index
        @drivers = Driver.where("usuario_id = ?", current_usuario.id)
        @vehicle_per_usuarios = VehiclePerUsuario.where("usuario_id = ?", current_usuario.id)
        @historyLink = ReferencesVehicleDriver.where("usuario_id = ?", current_usuario.id)
        @vehicle_per_usuario = VehiclePerUsuario.new
        @driver = Driver.new
        @references_vehicle_driver = ReferencesVehicleDriver.new
    end
    
end
