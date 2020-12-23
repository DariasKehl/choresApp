class EditChoresOwnerId < ActiveRecord::Migration[5.2]
  def change
    rename_column :chores, :owner, :owner_id
  end
end
