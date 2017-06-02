class AddAmountToSalaries < ActiveRecord::Migration[5.0]
  def change
    add_column :salaries, :amount, :integer
  end
end
