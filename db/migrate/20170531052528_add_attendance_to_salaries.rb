class AddAttendanceToSalaries < ActiveRecord::Migration[5.0]
  def change
    add_column :salaries, :attendance, :integer
  end
end
