class CreatePromocions < ActiveRecord::Migration[7.0]
  def change
    create_table :promocions do |t|
      t.string :nombre
      t.boolean :estado
      t.daterange :fecha_vigencia

      t.timestamps
    end
  end
end
