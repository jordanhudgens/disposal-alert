json.array!(@d_alerts) do |d_alert|
  json.extract! d_alert, :id, :name, :due_date, :alert_category, :contact_name
  json.url d_alert_url(d_alert, format: :json)
end
