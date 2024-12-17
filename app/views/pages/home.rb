class Views::Pages::Home < Views::Base
  def title = t("home.title")

  def view_template
    div(class: "flex flex-col items-center justify-center h-screen bg-[url('/home_bg.jpg')] bg-cover bg-center") do
      div(class: "flex flex-col items-center justify-center space-y-2 mt-10") do
        Link(href: new_report_path, variant: :primary, size: :xl, class: "flex items-center gap-3 w-full pe-5 me-3") do
          span { t("home.report_missing") }

          Hero::PaperAirplane(variant: :solid, class: "size-6 scale-x-[-1]")
        end

        Link(href: reports_path, variant: :primary, size: :xl, class: "flex items-center gap-3 w-full pe-5 ms-3") do
          span { t("home.search_reports") }

          Hero::MagnifyingGlass(variant: :solid, class: "size-6")
        end
      end
    end
  end
end
