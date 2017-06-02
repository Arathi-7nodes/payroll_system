class CreateEmployees < ActiveRecord::Migration[5.0]
  def change
    create_table :employees do |t|
      t.string :user_id
      t.string :name
      t.date :start_date
      t.date :end_date
      t.string :normal_working_hours
      t.string :over_time_hours

      t.timestamps
    end
  end
end
