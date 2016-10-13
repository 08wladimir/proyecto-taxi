class Driver < ApplicationRecord
    belongs_to :usuario
    belongs_to :profile
    
    has_attached_file :license, styles: { medium: "850x850" }
    validates_attachment_content_type :license, content_type: /\Aimage\/.*\Z/
    
    has_attached_file :rut, styles: { medium: "850x850" }
    validates_attachment_content_type :rut, content_type: /\Aimage\/.*\Z/
    
    has_attached_file :peaceCertificate, styles: { medium: "850x850" }
    validates_attachment_content_type :peaceCertificate, content_type: /\Aimage\/.*\Z/
    
    has_attached_file :profilePic, styles: { medium: "850x850" }
    validates_attachment_content_type :profilePic, content_type: /\Aimage\/.*\Z/
    
    has_attached_file :licenseBehind, styles: { medium: "850x850" }
    validates_attachment_content_type :licenseBehind, content_type: /\Aimage\/.*\Z/
    
    
end
