require 'rails_helper'

describe RecurringAlert do
  describe "recurring alert created on Dec 15, 2014" do
    before do
      @recurring_alert = RecurringAlert.create!(start_date: Date.new(2014, 12, 15))
    end

    it "should create d_alerts when a recurring alert is created" do
      expect(@recurring_alert.d_alerts.count).to eq(12)
    end

    it "should create a d_alert 12 months into the future" do
      last_d_alert = @recurring_alert.d_alerts.last
      expect(last_d_alert.due_date).to eq(Date.new(2015, 11, 15))
    end

    it "should create a d_alert for the start date" do
      first_d_alert = @recurring_alert.d_alerts.first
      expect(first_d_alert.due_date).to eq(Date.new(2014, 12, 15))
    end
  end

end