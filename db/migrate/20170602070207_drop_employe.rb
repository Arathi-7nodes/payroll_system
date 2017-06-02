class DropEmploye < ActiveRecord::Migration[5.0]
  def change
    drop_table :employe
  end
end
