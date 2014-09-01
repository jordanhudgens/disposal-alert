desc "Sends out a disposal alert"

task :send_d_alerts => :environment do
  d_alerts = DAlert.where(task_completed: false).where("due_date >= ?", Date.today).all

  if d_alerts.count > 0
    DAlertMailer.email(d_alerts).deliver
  end

end