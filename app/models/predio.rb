class Predio < ApplicationRecord
    validates :nm_predio, presence: true
    validates :cd_numero, presence: true
    validates :cd_cep, presence: true
end
