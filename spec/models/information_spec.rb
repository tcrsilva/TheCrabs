require 'rails_helper'

RSpec.describe Information, type: :model do
    context "Validade de uma informação/perfil" do
        it "Informações validas?" do
            info = Information.new
            info.nm_sindico = "Tais Silva"
            info.ds_email = "tcrs@gmail.com"
            info.cd_telefone = "1330189040"
            info.cd_celular = "139928738291"
            info.ds_endereco = "Rua Três"
            info.ds_municipio = "São Vicente - (SP)"
            info.cd_apartamento = "102"
            expect(info.valid?).to be_truthy
        end
        
        it "Há informações vazias?" do
            info = Information.new
            info.nm_sindico = nil
            info.ds_email = nil
            info.cd_apartamento = nil
            expect(info.valid?).to be_falsey
        end
    end
end