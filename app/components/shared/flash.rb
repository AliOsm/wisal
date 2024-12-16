module Components
  module Shared
    class Flash < Components::Base
      def view_template
        div(
          id: "flash",
          class: "z-[1000000] fixed bottom-4 left-1/2 transform -translate-x-1/2 w-full max-w-md px-4 z-50 space-y-4"
        ) do
          render Shared::FlashMessages.new
        end
      end
    end
  end
end
