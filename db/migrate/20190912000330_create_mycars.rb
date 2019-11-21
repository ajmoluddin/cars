class CreateMycars < ActiveRecord::Migration[5.2]
  def change
    create_table :mycars do |t|
      t.string :make
      t.string :model
      t.date :year

      t.timestamps
    end
  end
end
