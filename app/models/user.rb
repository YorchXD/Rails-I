class User < ApplicationRecord
    validates :first_name, presence: true, length: { minimum: 2, too_short:  ": El nombre debe contener minimo 2 caracteres" } 
    validates :last_name, presence: true, length: { minimum: 2, too_short: ": El apellido debe contener minimo 2 caracteres" }
    validates :email_address, presence: true#, :message => "Debe ingresar un corrreo"
    validates :age, presence: true, numericality: { greater_than: 10, less_than: 150, message: ": La edad minima a ingresar es de 10 años y la maxima es de 150 años" }#, :message => "La edad minima a ingresar es de 10 años y la maxima es de 150 años"
end
