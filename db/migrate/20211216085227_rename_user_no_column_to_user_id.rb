class RenameUserNoColumnToUserId < ActiveRecord::Migration[5.2]
  def change
    rename_column :users, :user_no, :user_id
  end
end
