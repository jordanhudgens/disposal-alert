class DAlert < ActiveRecord::Base
  belongs_to :recurring_alert
  default_scope { order("due_date ASC") }
end
