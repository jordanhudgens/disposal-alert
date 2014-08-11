class CreateRecurringAlerts < ActiveRecord::Migration
  def change
    create_table :recurring_alerts do |t|
      t.integer :alert_interval
      t.date :start_date

      t.timestamps
    end
  end
end
