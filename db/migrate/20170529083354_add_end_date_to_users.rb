class AddEndDateToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :end_date, :date
  end
end
