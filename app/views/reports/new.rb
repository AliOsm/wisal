class Views::Reports::New < Views::Base
  def initialize(report:)
    @report = report
  end

  def title = t("reports.new.title")

  def view_template
    div(class: "flex flex-col items-center justify-center h-screen p-4 bg-[url('/bg.jpg')] bg-cover bg-top") do
      Card(class: "w-full max-w-md max-sm:mt-20") do
        CardHeader(class: "pb-4") do
          CardTitle { t("reports.new.title") }
        end

        CardContent(class: "pb-2") do
          form_with(model: @report, id: "report-form") do |form|
            render Components::Shared::Errors.new(resource: @report)

            div(class: "space-y-2") do
              render Components::Forms::Field.new(form:, type: :text, name: :name, required: true, placeholder: Report.human_attribute_name(:name))
              render Components::Forms::Field.new(form:, type: :number, name: :age, required: true, placeholder: Report.human_attribute_name(:age))
              render Components::Forms::Field.new(form:, type: :text, name: :last_known_place, placeholder: Report.human_attribute_name(:last_known_place))
              render Components::Forms::TextArea.new(form:, name: :characteristics, placeholder: Report.human_attribute_name(:characteristics))

              div(class: "flex items-center justify-center shadow-sm rounded-md border overflow-hidden ps-3") do
                span(class: "text-muted-foreground text-sm pe-2") { Report.human_attribute_name(:image) }
                render Components::Forms::Field.new(form:, type: :file, name: :image, class: "border-0 rounded-none shadow-none ps-0 sm:ps-0.5 border-s")
              end

              render Components::Forms::Field.new(form:, type: :text, name: :contact, placeholder: Report.human_attribute_name(:contact))

              div(data: { controller: "cloudflare-turnstile" }) do
                cloudflare_turnstile
              end
            end
          end
        end

        CardFooter(class: "flex justify-end gap-x-2") do
          Button(variant: :primary, type: :submit, class: "flex items-center gap-2 pe-4", form: "report-form") do
            span { t("reports.new.submit") }

            Hero::PaperAirplane(variant: :solid, class: "size-5 scale-x-[-1]")
          end
        end
      end
    end
  end
end
