class Finance < ApplicationRecord
    validates :cd_finance, presence: true
    validates :nm_finance, presence: true
    validates :vl_finance, presence: true
end
