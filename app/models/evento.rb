class Evento < ApplicationRecord
    validates :local, presence: true
    validates :date, presence: true
    
    #def titulo_completo
    #    "#{self.titulo} Texto: #{self.texto}"
    #end
end
