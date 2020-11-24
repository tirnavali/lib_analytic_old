class AcquisitionReportsController < ApplicationController
    def new
      @acquisition_report = AcquisitionReport.new
    end

    def edit
      @acquisition_report = AcquisitionReport.find(params[:id])
    end

    def create
      @acquisition_report = AcquisitionReport.new(acquisition_report_params)
      if @acquisition_report.save 
        redirect_to @acquisition_report
      else
        render 'new'
      end

      # debug için yorumu açın
      #render plain: params[:acquisition_report].inspect        
    end

    def update
      @acquisition_report = AcquisitionReport.find(params[:id])
      if @acquisition_report.update(acquisition_report_params)
        redirect_to @acquisition_report
      else
        render 'edit'
      end
    end

    def destroy
      @acquisition_report = AcquisitionReport.find(params[:id])
      @acquisition_report.destroy
      redirect_to acquisition_reports_path
    end

    def show
        @acquisition_report = AcquisitionReport.find(params[:id])
    end
    
    def index
      @acquisition_reports = AcquisitionReport.all
    end

    private
      def acquisition_report_params
        params.require(:acquisition_report).permit(:reporter_identity, :job_title, :posted_books, :refactored_items, :note, :date)
      end
end
