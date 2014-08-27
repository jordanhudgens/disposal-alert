class RecurringAlert < ActiveRecord::Base
  has_many :d_alerts, dependent: :destroy

  after_create :create_d_alerts
  after_update :update_d_alerts

  private

  def create_d_alerts
    12.times do |i|
      self.d_alerts.create(due_date: start_date + i.months)
    end
  end

  def update_d_alerts
    12.times do |i|
      self.d_alerts.update(due_date: start_date + i.months)
    end
  end
end
