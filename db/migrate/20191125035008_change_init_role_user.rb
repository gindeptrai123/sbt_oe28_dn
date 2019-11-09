class ChangeInitRoleUser < ActiveRecord::Migration[5.0]
  def change
    change_column :users, :role, default: 1
  end
end
