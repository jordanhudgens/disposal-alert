class DAlertMailer < ActionMailer::Base
  default from: 'jordanhudgens@westexwell.com'

  def email(d_alerts)
    @d_alerts = d_alerts
    @url  = 'http://example.com/login'
    mail(to: ["jordan@hudgens.com", "jordan.hudgens@reif.io"], subject: 'Disposal Alert')
  end
end
