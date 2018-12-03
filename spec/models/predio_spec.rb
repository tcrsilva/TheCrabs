require 'rails_helper'

RSpec.describe Predio, type: :model do
    #Capybara
    #RSpec
    context "Validade de um Prédio" do
        it "Predio válido?" do
            predio = Predio.new
            predio.nm_predio = "Edifício Ipanema"
            predio.cd_numero = "200"
            predio.cd_bloco = "5"
            predio.cd_cep = "11390330"
            predio.ds_endereco = "Rua Brasilia"
            predio.ds_municipio = "Santos-SP"
            predio.ds_regioesSociais = "Academia,Piscina"
            predio.cd_telefone = "1334668899"
            expect(predio.valid?).to be_truthy
        end
        
        it "Predio sem nome, número ou cep?" do
            predio = Predio.new
            predio.nm_predio = nil
            predio.cd_numero = nil
            predio.cd_cep = nil
            expect(predio.valid?).to be_falsey
        end
        
        it "Predio válido?" do
            predio1 = Predio.new
            predio1.nm_predio = "Edifício Navegantes"
            predio1.cd_numero = "632"
            predio1.cd_bloco = "2"
            predio1.cd_cep = "11450663"
            predio1.ds_endereco = "Rua Alemanha"
            predio1.ds_municipio = "São Vicente - SP"
            predio1.ds_regioesSociais = "Nenhuma"
            predio1.cd_telefone = "1334678852"
            expect(predio1.valid?).to be_truthy
        end
        
        it "Predio sem nome, número ou cep?" do
            predio1 = Predio.new
            predio1.nm_predio = nil
            predio1.cd_numero = nil
            predio1.cd_cep = nil
            expect(predio1.valid?).to be_falsey
        end
        
        it "Predio válido?" do
            predio2 = Predio.new
            predio2.nm_predio = "Edif´cio Praia do Forte"
            predio2.cd_numero = "26"
            predio2.cd_bloco = "4"
            predio2.cd_cep = "11630220"
            predio2.ds_endereco = "Rua Cel Fontenelle"
            predio2.ds_municipio = "Praia Grande - SP"
            predio2.ds_regioesSociais = "Salão"
            predio2.cd_telefone = "1334915566"
            expect(predio2.valid?).to be_truthy
        end
        
        it "Predio sem nome, número ou cep?" do
            predio2 = Predio.new
            predio2.nm_predio = nil
            predio2.cd_numero = nil
            predio2.cd_cep = nil
            expect(predio2.valid?).to be_falsey
        end
        
        it "Predio válido?" do
            predio3 = Predio.new
            predio3.nm_predio = "Gran Canal"
            predio3.cd_numero = "53"
            predio3.cd_bloco = "1"
            predio3.cd_cep = "11040001"
            predio3.ds_endereco = "Av. Almirante Cochrane"
            predio3.ds_municipio = "Santos - SP"
            predio3.ds_regioesSociais = "Salão de Festas"
            predio3.cd_telefone = "1332368645"
            expect(predio3.valid?).to be_truthy
        end
        
        it "Predio sem nome, número ou cep?" do
            predio3 = Predio.new
            predio3.nm_predio = nil
            predio3.cd_numero = nil
            predio3.cd_cep = nil
            expect(predio3.valid?).to be_falsey
        end
        
    end
end