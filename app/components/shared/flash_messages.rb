module Components
  module Shared
    class FlashMessages < Components::Base
      def view_template
        flash.each do |type, message|
          next unless message.is_a?(String)

          if type == "notice"
            Alert(variant: :success) do
              Hero::CheckCircle(class: "size-5")
              AlertTitle(class: "mt-1") { t("shared.flash_messages.notice") }
              AlertDescription { message }
            end
          elsif type == "alert"
            Alert(variant: :destructive) do
              Hero::ExclamationTriangle(class: "size-5")
              AlertTitle(class: "mt-1") { t("shared.flash_messages.alert") }
              AlertDescription { raw(safe(message)) }
            end
          end
        end
      end
    end
  end
end
