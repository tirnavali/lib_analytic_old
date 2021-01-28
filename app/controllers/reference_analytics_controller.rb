class ReferenceAnalyticsController < ApplicationController
  before_action :set_reference_analytic, only: [:show, :edit, :update, :destroy]

  # GET /reference_analytics
  # GET /reference_analytics.json
  def index
    @reference_analytics = ReferenceAnalytic.all
  end

  # GET /reference_analytics/1
  # GET /reference_analytics/1.json
  def show
  end

  # GET /reference_analytics/new
  def new
    @reference_analytic = ReferenceAnalytic.new
  end

  # GET /reference_analytics/1/edit
  def edit
  end

  # POST /reference_analytics
  # POST /reference_analytics.json
  def create
    @reference_analytic = ReferenceAnalytic.new(reference_analytic_params)

    respond_to do |format|
      if @reference_analytic.save
        format.html { redirect_to @reference_analytic, notice: 'Reference analytic was successfully created.' }
        format.json { render :show, status: :created, location: @reference_analytic }
      else
        format.html { render :new }
        format.json { render json: @reference_analytic.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reference_analytics/1
  # PATCH/PUT /reference_analytics/1.json
  def update
    respond_to do |format|
      if @reference_analytic.update(reference_analytic_params)
        format.html { redirect_to @reference_analytic, notice: 'Reference analytic was successfully updated.' }
        format.json { render :show, status: :ok, location: @reference_analytic }
      else
        format.html { render :edit }
        format.json { render json: @reference_analytic.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reference_analytics/1
  # DELETE /reference_analytics/1.json
  def destroy
    @reference_analytic.destroy
    respond_to do |format|
      format.html { redirect_to reference_analytics_url, notice: 'Reference analytic was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reference_analytic
      @reference_analytic = ReferenceAnalytic.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def reference_analytic_params
      params.require(:reference_analytic).permit(:reporter, :report_date, :user_from_out, :user_from_inside)
    end
end
