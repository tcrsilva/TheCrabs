class Information < ApplicationRecord
    validates :nm_sindico, presence: true
    validates :ds_email, presence: true
    validates :cd_apartamento, presence: true
end

