class AddTaskCompletedToDAlerts < ActiveRecord::Migration
  def change
    add_column :d_alerts, :task_completed, :boolean, default: false
  end
end
