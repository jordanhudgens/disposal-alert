class RecurringAlert < ActiveRecord::Base
  has_many :d_alerts, dependent: :destroy
  validates_presence_of :alert_interval, :start_date, :name, :alert_category, :contact_name

  after_create :create_d_alerts
  after_update :update_d_alerts

  default_scope { order("created_at DESC") }

  private

  def create_d_alerts

    self.number_of_alerts.times do |i|
      if self.alert_interval == 1
        self.d_alerts.create(due_date: start_date + i.week)
      elsif self.alert_interval == 2
        self.d_alerts.create(due_date: start_date + i.weeks)
      elsif self.alert_interval == 3
        self.d_alerts.create(due_date: start_date + i.month)
      elsif self.alert_interval == 4
        self.d_alerts.create(due_date: start_date + i.months)
      else
        self.d_alerts.create(due_date: start_date + i.year)
      end

    end
  end

  def update_d_alerts
    self.d_alerts.destroy_all
    create_d_alerts
  end
end
