class AddMonthlyIncomeToSalaries < ActiveRecord::Migration[5.0]
  def change
    add_column :salaries, :monthly, :string
    add_column :salaries, :income, :integer
  end
end
