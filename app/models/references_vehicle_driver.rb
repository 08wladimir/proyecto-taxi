class ReferencesVehicleDriver < ApplicationRecord
  belongs_to :driver
  belongs_to :usuario
  belongs_to :VehiclePerUsuario
  
  after_create :send_mail
  
  
  private
  def send_mail
    ReferencesVehicleDriversMailer.new_referencesdrivervehicle(self).deliver_later
  end
  
end
