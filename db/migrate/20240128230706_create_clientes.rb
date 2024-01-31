class CreateClientes < ActiveRecord::Migration[7.0]
  def change
    create_table :clientes do |t|
      t.string :codigo
      t.string :nombre
      t.string :datocorreo
      t.string :telefono

      t.timestamps
    end
  end
end
