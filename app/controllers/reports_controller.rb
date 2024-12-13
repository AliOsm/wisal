class ReportsController < ApplicationController
  def new
    @report = Report.new

    render Views::Reports::New.new(report: @report)
  end

  def create
    @report = Report.new(report_params)

    if @report.save
      redirect_to root_path, notice: t(".success")
    else
      render Views::Reports::New.new(report: @report), status: :unprocessable_entity
    end
  end

  private

  def report_params
    params.require(:report).permit(:name, :age, :last_known_place, :characteristics, :contact, :image)
  end
end
