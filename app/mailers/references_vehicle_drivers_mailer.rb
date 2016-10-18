class ReferencesVehicleDriversMailer < ApplicationMailer
    
    def new_referencesdrivervehicle(references_vehicle_driver)
        @references_vehicle_driver = references_vehicle_driver
        
        mail(to: "kevinp0403@gmail.com", subject: "Mensaje enviado correctamente, esta es la prueba")
    end
    
end
