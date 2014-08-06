class CreateDAlerts < ActiveRecord::Migration
  def change
    create_table :d_alerts do |t|
      t.string :name
      t.date :due_date
      t.string :alert_category
      t.string :contact_name

      t.timestamps
    end
  end
end
