class DropEmploye < ActiveRecord::Migration[5.0]
  def change
     drop_table :Employes
  end
end
