class AddBillableToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :billable, :boolean
  end
end
