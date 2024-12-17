class Components::Reports::SearchResult < Components::Base
  def initialize(report:)
    @report = report
  end

  def view_template
    div(class: "flex gap-x-2 hover:bg-muted p-2 rounded-lg") do
      img(src: image, class: "overflow-hidden rounded-lg border h-full min-w-32 w-32")

      div(class: "flex-grow") do
        h3(class: "text-lg font-bold") do
          plain @report.name
        end

        p do
          plain Report.human_attribute_name(:age)
          plain ": "
          plain @report.age
        end

        p do
          plain Report.human_attribute_name(:last_known_place)
          plain ": "
          last_known_place
        end

        p do
          plain Report.human_attribute_name(:characteristics)
          plain ": "
          characteristics
        end

        p do
          plain Report.human_attribute_name(:contact)
          plain ": "
          plain @report.contact
        end
      end
    end
  end

  private

  def image
    if @report.image.present?
      ActiveStorage::Current.set(url_options: { host: "https://wisal.app", protocol: "https" }) { @report.image.url(expires_in: nil) }
    else
      "/report.webp"
    end
  end

  def last_known_place
    if @report.last_known_place.present?
      plain @report.last_known_place
    else
      span(class: "text-red-500") { t("reports.search_result.unknown") }
    end
  end

  def characteristics
    if @report.characteristics.present?
      plain @report.characteristics
    else
      span(class: "text-red-500") { t("reports.search_result.unknown") }
    end
  end
end
