class DAlert < ActiveRecord::Base
  belongs_to :recurring_alert

  after_update :create_alert

  def create_alert

  end
end
