class RemoveColumnsFromDAlertsAndAddToRecurring < ActiveRecord::Migration
  def change
    remove_column :d_alerts, :alert_category
    remove_column :d_alerts, :contact_name

    add_column :recurring_alerts, :alert_category, :string
    add_column :recurring_alerts, :contact_name, :string
  end
end
