class UsuarioMailer < ApplicationMailer
    def new_usuario(usuario)
        @usuario = usuario
        
        Usuario.all.each do |u|
            mail(to: u.email, subject: "Holaaaaa prueba")
        end
    end
end
