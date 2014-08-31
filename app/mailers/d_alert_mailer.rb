class DAlertMailer < ActionMailer::Base
  default from: 'jordanhudgens@westexwell.com'

  def d_alert_email(d_alert)
    @user = user
    @url  = 'http://example.com/login'
    mail(to: @user.email, subject: 'Disposal Alert')
  end
end
