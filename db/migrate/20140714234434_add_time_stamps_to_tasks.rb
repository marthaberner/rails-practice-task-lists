class AddTimeStampsToTasks < ActiveRecord::Migration
  def change
    change_table :tasks do |t|
      t.timestamps
    end
  end
end
