class Combo < ApplicationRecord
    has_many :usuarios_servicios_combos
    has_many :usuarios, through: :usuarios_servicios_combos
    has_many :ofertas
end
