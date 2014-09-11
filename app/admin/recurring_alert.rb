ActiveAdmin.register RecurringAlert do

  permit_params :name, :alert_category, :contact_name, :alert_interval, :start_date

  INTERVALS = %w(Weekly Twice-Monthly Monthly Quarterly Annually)

  form do |f|
    f.inputs "Test" do
      f.input :name
      f.input :alert_category
      f.input :contact_name
      f.input :alert_interval, :as => :select, :collection => INTERVALS
      f.input :start_date, :as => :datepicker
    end
    f.actions
  end

end
