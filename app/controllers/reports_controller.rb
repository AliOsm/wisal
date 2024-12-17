class ReportsController < ApplicationController
  include Pagy::Backend

  before_action :set_report, only: :create
  before_action :validate_cloudflare_turnstile, only: :create

  rescue_from RailsCloudflareTurnstile::Forbidden, with: :cloudflare_turnstile_handler

  def index
    render Views::Reports::Index.new
  end

  def new
    @report = Report.new

    render Views::Reports::New.new(report: @report)
  end

  def create
    if @report.save
      redirect_back fallback_location: root_path, notice: t(".success")
    else
      render Views::Reports::New.new(report: @report), status: :unprocessable_entity
    end
  end

  def search
    @pagy, @reports = pagy_meilisearch(
      Report.pagy_search(
        params[:name] + " " + params[:last_known_place] + " " + params[:characteristics],
        filter: params[:age].present? ? "age = #{params[:age]}" : nil
      ),
      limit: 100
    )
  end

  private

  def report_params
    params.require(:report).permit(:name, :age, :last_known_place, :characteristics, :contact, :image)
  end

  def set_report
    @report = Report.new(report_params)
  end

  def cloudflare_turnstile_handler
    @report.errors.add(:base, t("reports.create.captcha_error_message"))

    render Views::Reports::New.new(report: @report), status: :see_other
  end
end
