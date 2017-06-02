class AddMedicalToSalaries < ActiveRecord::Migration[5.0]
  def change
    add_column :salaries, :medical, :integer
  end
end
