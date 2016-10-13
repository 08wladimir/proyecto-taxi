class Usuario < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  
  after_create :send_email
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
  has_attached_file :pictureProfile, styles: { medium: "300x300>", thumb: "100x100>" }
    validates_attachment_content_type :pictureProfile, content_type: /\Aimage\/.*\Z/
  
  def send_email
    UsuarioMailer.new_usuario(self)
  end
  
end
