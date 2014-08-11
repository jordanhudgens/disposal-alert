class AddRecurringAlertIdToDAlert < ActiveRecord::Migration
  def change
    add_column :d_alerts, :recurring_alert_id, :integer
  end
end
