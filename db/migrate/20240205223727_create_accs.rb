class CreateAccs < ActiveRecord::Migration[7.0]
  def change
    create_table :accs do |t|
      t.string :nombre_de_cuentas
      t.string :contrasena
      t.string :perfiles
      t.string :facturacion

      t.timestamps
    end
  end
end
