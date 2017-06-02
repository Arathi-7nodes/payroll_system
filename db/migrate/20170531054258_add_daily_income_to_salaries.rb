class AddDailyIncomeToSalaries < ActiveRecord::Migration[5.0]
  def change
    add_column :salaries, :daily_income, :integer
  end
end
