class EditChoresUserId < ActiveRecord::Migration[5.2]
  def change
    rename_column :chores, :owner_id, :user_id
  end
end
