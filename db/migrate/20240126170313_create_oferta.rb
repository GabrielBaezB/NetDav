class CreateOferta < ActiveRecord::Migration[7.0]
  def change
    create_table :oferta do |t|
      t.references :combo, null: false, foreign_key: true
      t.references :servicio, null: false, foreign_key: true

      t.timestamps
    end
  end
end
