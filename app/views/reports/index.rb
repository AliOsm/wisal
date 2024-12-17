class Views::Reports::Index < Views::Base
  def title = t("reports.index.title")

  def view_template
    div(class: "flex flex-col items-center justify-center h-screen p-4 bg-[url('/bg.jpg')] bg-cover bg-top") do
      Card(class: "w-full max-w-md max-sm:mt-20") do
        CardHeader(class: "pb-4") do
          CardTitle { t("reports.index.title") }
        end

        CardContent(class: "pb-4") do
          form_with(url: search_reports_path, id: "report-form") do |form|
            div(class: "space-y-2") do
              render Components::Forms::Field.new(form:, type: :text, name: :name, required: true, placeholder: Report.human_attribute_name(:name))
              render Components::Forms::Field.new(form:, type: :number, name: :age, placeholder: Report.human_attribute_name(:age))
              render Components::Forms::Field.new(form:, type: :text, name: :last_known_place, placeholder: Report.human_attribute_name(:last_known_place))
              render Components::Forms::TextArea.new(form:, name: :characteristics, placeholder: Report.human_attribute_name(:characteristics))
            end
          end
        end

        CardFooter(class: "flex justify-end gap-x-2") do
          Button(variant: :primary, type: :submit, class: "flex items-center gap-2 pe-4", form: "report-form") do
            span { t("reports.index.submit") }

            Hero::PaperAirplane(variant: :solid, class: "size-5 scale-x-[-1]")
          end
        end
      end
    end

    turbo_frame_tag("reports")
  end
end
