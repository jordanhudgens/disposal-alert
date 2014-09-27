class RecurringAlert < ActiveRecord::Base
  has_many :d_alerts, dependent: :destroy
  validates_presence_of :alert_interval, :start_date, :name, :alert_category, :contact_name

  after_create :create_d_alerts
  after_update :update_d_alerts

  private

  def create_d_alerts
    12.times do |i|
      self.d_alerts.create(due_date: start_date + i.months)
    end
  end

  def update_d_alerts
    self.d_alerts.destroy_all
    create_d_alerts
  end
end
