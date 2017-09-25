class AddSubTasksToTasks < ActiveRecord::Migration[5.1]
  def change
    add_column :tasks, :sub_task, :string, array: true, default: '{}'
  end
end
