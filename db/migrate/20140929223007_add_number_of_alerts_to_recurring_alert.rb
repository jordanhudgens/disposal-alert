class AddNumberOfAlertsToRecurringAlert < ActiveRecord::Migration
  def change
    add_column :recurring_alerts, :number_of_alerts, :integer
  end
end
