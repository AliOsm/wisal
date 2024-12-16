module Components
  module Shared
    class Errors < Components::Base
      def initialize(resource:)
        @resource = resource

        super()
      end

      def view_template
        return unless @resource.errors.any?

        Alert(dismissible: false, variant: :destructive, class: "mb-4") do
          AlertTitle(class: "mt-0.5") { t("shared.errors.title") }

          AlertDescription do
            ul(class: "ps-4 mt-1.5 list-disc list-outside") do
              @resource.errors.full_messages.each do |message|
                li { message }
              end
            end
          end
        end
      end
    end
  end
end
