class Usuario < ApplicationRecord
    has_many :usuarios_servicios_combos
    has_many :servicios, through: :usuarios_servicios_combos
    has_many :combos, through: :usuarios_servicios_combos
end
