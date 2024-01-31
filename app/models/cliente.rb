class Cliente < ApplicationRecord
    has_many :contratos_servicios
    has_many :contratos_combos
    has_many :promociones

end
