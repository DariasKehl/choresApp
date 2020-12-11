class CreateChores < ActiveRecord::Migration[5.2]
  def change
    create_table :chores do |c|
      c.string :name
      c.integer :owner
      c.string :description
      c.datetime :due_date
      c.boolean :completed
    end
  end
end