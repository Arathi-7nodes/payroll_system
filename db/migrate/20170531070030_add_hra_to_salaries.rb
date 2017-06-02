class AddHraToSalaries < ActiveRecord::Migration[5.0]
  def change
    add_column :salaries, :hra, :integer
  end
end
