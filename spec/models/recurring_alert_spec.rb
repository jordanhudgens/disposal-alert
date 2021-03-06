require 'rails_helper'

describe RecurringAlert do
  describe "recurring alert created on Dec 15, 2014" do
    before do
      @recurring_alert = RecurringAlert.create!(start_date: Date.new(2014, 12, 15), alert_interval: 1, name: "Well Holdings, LLC", alert_category: "Landowner", contact_name: "Joe Smith", number_of_alerts: 25)
    end

    it "should create d_alerts when a recurring alert is created" do
      expect(@recurring_alert.d_alerts.count).to eq(25)
    end

    it "should create a d_alert for the start date" do
      first_d_alert = @recurring_alert.d_alerts.first
      expect(first_d_alert.due_date).to eq(Date.new(2014, 12, 15))
    end

    it "should delete the associated d_alerts when the recurring alert is deleted" do
      @recurring_alert.destroy!
      expect(@recurring_alert.d_alerts.count).to eq(0)
    end

    it "should update the associated d_alerts when the recurring alert is updated" do
      @recurring_alert.start_date = Date.new(2014, 12, 16)
      @recurring_alert.save!
      first_d_alert = @recurring_alert.d_alerts.first
      expect(first_d_alert.due_date).to eq(Date.new(2014, 12, 16))
    end

  end

end