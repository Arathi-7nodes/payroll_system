class AddIndirectExperienceToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :indirect_experience, :integer
  end
end
