class AddStartingSalaryToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :starting_salary, :decimal
  end
end
