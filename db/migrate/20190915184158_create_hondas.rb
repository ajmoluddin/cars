class CreateHondas < ActiveRecord::Migration[5.2]
  def change
    create_table :hondas do |t|
      t.references :mycar, foreign_key: true
      t.string :vehicle_type
      t.string :transmission

      t.timestamps
    end
  end
end
