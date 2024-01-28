class CreateUsuariosServiciosCombos < ActiveRecord::Migration[7.0]
  def change
    create_table :usuarios_servicios_combos do |t|
      t.references :usuario, null: false, foreign_key: true
      t.references :servicio, null: false, foreign_key: true
      t.references :combo, null: false, foreign_key: true

      t.timestamps
    end
  end
end
