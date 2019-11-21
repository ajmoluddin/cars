class ChangeDatetoYears < ActiveRecord::Migration[5.2]
  def change
    change_column :mycars, :year, :integer
  end
end
