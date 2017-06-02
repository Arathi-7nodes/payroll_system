class AddMonthToSalaries < ActiveRecord::Migration[5.0]
  def change
    add_column :salaries, :month, :date
  end
end
