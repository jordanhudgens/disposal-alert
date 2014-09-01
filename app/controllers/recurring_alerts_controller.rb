class RecurringAlertsController < ApplicationController
  def index
    @recurring_alerts = RecurringAlert.all
  end

  def show
  end

  def edit
  end

  def new
    @recurring_alert = RecurringAlert.new
  end

  def create
    @recurring_alert = RecurringAlert.new(recurring_alert_params)

    respond_to do |format|
      if @recurring_alert.save
        format.html { redirect_to @recurring_alert, notice: 'Recurring alert was successfully created.' }
        format.json { render action: 'show', status: :created, location: @recurring_alert }
      else
        format.html { render action: 'new' }
        format.json { render json: @recurring_alert.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
  end

  def destroy
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_d_alert
    @recurring_alert = RecurringAlert.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def recurring_alert_params
    params.require(:recurring_alert).permit(:alert_interval, :start_date, :name, :alert_category, :contact_name)
  end

end
