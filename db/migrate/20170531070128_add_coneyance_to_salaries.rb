class AddConeyanceToSalaries < ActiveRecord::Migration[5.0]
  def change
    add_column :salaries, :conveyance, :integer
  end
end
