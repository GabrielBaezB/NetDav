class CreateContratoComboPaquetes < ActiveRecord::Migration[7.0]
  def change
    create_table :contrato_combo_paquetes do |t|
      t.references :cliente, null: false, foreign_key: true
      t.string :combo_paquete
      t.integer :cantidad
      t.decimal :valor
      t.datetime :fecha_contratacion

      t.timestamps
    end
  end
end
