class UsuariosServiciosCombo < ApplicationRecord
  belongs_to :usuario
  belongs_to :servicio
  belongs_to :combo
end
