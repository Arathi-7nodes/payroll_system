class AddTotalEarningsToSalaries < ActiveRecord::Migration[5.0]
  def change
    add_column :salaries, :total_earnings, :integer
  end
end
