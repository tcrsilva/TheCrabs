class Evento < ApplicationRecord
    validates :local, presence: true
    validates :date, presence: true
end
