class Cliente < ApplicationRecord
    devise  :database_authenticatable, :registerable,
            :recoverable, :rememberable, :validatable
    has_many :contratos_servicios
    has_many :contratos_combos
    has_many :promociones
end
