require 'rails_helper'

RSpec.describe Finance, type: :model do
    context "Validade da finança" do
        it "Finança valida?" do
            gasto = Finance.new
            gasto.cd_finance = "102937189"
            gasto.nm_finance = "Pintura"
            gasto.vl_finance = "2000.0"
            expect(gasto.valid?).to be_truthy
        end
        
        it "Campos preenchidos?" do
            gasto = Finance.new
            gasto.cd_finance = nil
            gasto.nm_finance = nil
            gasto.vl_finance = nil
            expect(gasto.valid?).to be_falsey
        end
        
        it "Finança valida?" do
            gasto1 = Finance.new
            gasto1.cd_finance = "4422213242"
            gasto1.nm_finance = "Manutenção do Elevador"
            gasto1.vl_finance = "6580.0"
            expect(gasto1.valid?).to be_truthy
        end
        
        it "Campos preenchidos?" do
            gasto1 = Finance.new
            gasto1.cd_finance = nil
            gasto1.nm_finance = nil
            gasto1.vl_finance = nil
            expect(gasto1.valid?).to be_falsey
        end
    end
end
