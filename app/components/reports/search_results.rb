class Components::Reports::SearchResults < Components::Base
  def initialize(pagy:, reports:)
    @pagy = pagy
    @reports = reports
  end

  def view_template
    Dialog(open: true) do
      DialogTrigger(class: "hidden") { }

      DialogContent(size: :lg) do
        DialogHeader do
          DialogTitle { t("reports.search_results.title") }
        end

        DialogMiddle(class: "max-h-96 overflow-y-auto border p-2 rounded-lg space-y-2") do
          @reports.each do |report|
            render Components::Reports::SearchResult.new(report:)
          end
        end

        DialogFooter do
          Button(variant: :outline, data: { action: "click->ruby-ui--dialog#dismiss" }) { t("close") }
        end
      end
    end
  end
end
