class Vehicule < ApplicationRecord
    belongs_to :profile
    belongs_to :vehicle_per_usuario
    
    has_attached_file :picture, styles: { medium: "850x850" }
    validates_attachment_content_type :picture, content_type: /\Aimage\/.*\Z/
    
    def brandmodel
        "#{brand} - #{model}"
    end
    
end
