class RemoveDueDateColumn < ActiveRecord::Migration
  def change
    remove_column :tasks, :due_date
  end
end
