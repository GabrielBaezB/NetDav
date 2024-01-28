class CreateCombos < ActiveRecord::Migration[7.0]
  def change
    create_table :combos do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
