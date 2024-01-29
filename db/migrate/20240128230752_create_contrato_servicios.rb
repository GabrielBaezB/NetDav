class CreateContratoServicios < ActiveRecord::Migration[7.0]
  def change
    create_table :contrato_servicios do |t|
      t.references :cliente, null: false, foreign_key: true
      t.string :servicio
      t.integer :cantidad
      t.decimal :valor_individual
      t.datetime :fecha_contratacion

      t.timestamps
    end
  end
end
