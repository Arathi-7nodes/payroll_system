class ChangeAttendanceFromSalaries < ActiveRecord::Migration[5.0]
  def change
    change_column :salaries, :attendance, :integer, default: 0
  end
end
