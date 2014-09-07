class DAlertsController < ApplicationController
  before_action :set_d_alert, only: [:show, :edit, :update, :destroy, :completed]

  # GET /d_alerts
  # GET /d_alerts.json
  def index
    @d_alerts = DAlert.where(task_completed: false).where(due_date: Date.today..15.days.from_now)
  end

  # GET /d_alerts/1
  # GET /d_alerts/1.json
  def show
  end

  # GET /d_alerts/new
  def new
    @d_alert = DAlert.new
  end

  # GET /d_alerts/1/edit
  def edit
  end

  # POST /d_alerts
  # POST /d_alerts.json
  def create
    @d_alert = DAlert.new(d_alert_params)

    respond_to do |format|
      if @d_alert.save
        format.html { redirect_to @d_alert, notice: 'D alert was successfully created.' }
        format.json { render action: 'show', status: :created, location: @d_alert }
      else
        format.html { render action: 'new' }
        format.json { render json: @d_alert.errors, status: :unprocessable_entity }
      end
    end
  end


  # PATCH/PUT /d_alerts/1
  # PATCH/PUT /d_alerts/1.json
  def update
    respond_to do |format|
      if @d_alert.update(d_alert_params)
        format.html { redirect_to @d_alert, notice: 'D alert was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @d_alert.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /d_alerts/1
  # DELETE /d_alerts/1.json
  def destroy
    @d_alert.destroy
    respond_to do |format|
      format.html { redirect_to d_alerts_url }
      format.json { head :no_content }
    end
  end

  def completed
    @d_alert.update_attribute(:task_completed, true)
    respond_to do |format|
      format.html { redirect_to d_alerts_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_d_alert
      @d_alert = DAlert.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def d_alert_params
      params.require(:d_alert).permit(:due_date, :task_completed)
    end
end
