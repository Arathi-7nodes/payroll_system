class CreateEmployes < ActiveRecord::Migration[5.0]
  def change
    create_table :employes do |t|
      t.integer :user_id
      t.string :name
      t.date :start_date
      t.date :end_date
      t.boolean :billable
      t.integer :direct_experience
      t.integer :indirect_experience
      t.decimal :starting_salary
      t.text :notes
      t.date :planning_raise_date
      t.decimal :planning_raise_salary
      t.text :planning_notes

      t.timestamps
    end
  end
end
