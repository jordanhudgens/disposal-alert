class RemoveNameFromDAlertAndAddToRecurrringAlert < ActiveRecord::Migration
  def change
    remove_column :d_alerts, :name
    add_column :recurring_alerts, :name, :string
  end
end
