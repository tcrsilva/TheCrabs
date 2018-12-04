require 'rails_helper'

RSpec.describe Evento, type: :model do
    # RSpec
    context "Validade de um Evento" do
        it "Evento valido?" do
            evento = Evento.new
            evento.titulo = "Aniversário Júlio AP 20"
            evento.texto = "Venha comemorar meu aniversário!"
            evento.date = "2018-11-30"
            evento.local = "Salão de Festas"
            expect(evento.valid?).to be_truthy
        end
        
        it "Evento sem data e local?" do
            evento = Evento.new
            evento.date = nil
            evento.local = nil
            expect(evento.valid?).to be_falsey
        end
        
        it "Evento valido?" do
            evento1 = Evento.new
            evento1.titulo = "Reunião"
            evento1.texto = "Discutiremos sobre a reforma"
            evento1.date = "2018-11-17"
            evento1.local = "Sala de Reuniões no Terraço. Aguardo por você!"
            expect(evento1.valid?).to be_truthy
        end
        
        it "Evento sem data e local?" do
            evento1 = Evento.new
            evento1.date = nil
            evento1.local = nil
            expect(evento1.valid?).to be_falsey
        end
        
        it "Evento valido?" do
            evento2 = Evento.new
            evento2.titulo = "Aniversário Bianca AP12"
            evento2.texto = "Venha comemorar o 1º aniversário da minha filha!! Traga a criançada! Começará as 14h"
            evento2.date = "2018-11-11"
            evento2.local = "Salão de Festas"
            expect(evento2.valid?).to be_truthy
        end
        
        it "Evento sem data e local?" do
            evento2 = Evento.new
            evento2.date = nil
            evento2.local = nil
            expect(evento2.valid?).to be_falsey
        end
    end
    
    #context "Titulos Válidos" do
    #    it "Titulo completo" do
    #        evento = Evento.new
    #        evento.titulo = "Aniversário Júlio AP 20"
    #        evento.texto = "Venha comemorar meu aniversário!"
    #        expect(evento.titulo_completo).to eql("")
    #    end
    #end
end