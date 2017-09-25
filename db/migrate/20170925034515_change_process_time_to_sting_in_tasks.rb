class ChangeProcessTimeToStingInTasks < ActiveRecord::Migration[5.1]
  def change
    change_column :tasks, :process_time, :string
  end
end
