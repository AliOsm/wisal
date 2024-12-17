module Components
  module Forms
    class TextArea < Components::Base
      def initialize(form:, name:, **attrs)
        @form = form
        @name = name
        @attrs = attrs

        super()
      end

      def view_template
        @form.text_area(@name, **mix(default_attrs, @attrs))
      end

      private

      def default_attrs
        {
          class: "flex w-full rounded-md border bg-background px-3 py-1 text-sm shadow-sm transition-colors file:border-0 file:bg-transparent file:text-sm file:font-medium focus-visible:outline-none focus-visible:ring-1 disabled:cursor-not-allowed disabled:opacity-50 border-border focus-visible:ring-ring placeholder:text-muted-foreground"
        }
      end
    end
  end
end
