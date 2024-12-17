module Components
  module Forms
    class Field < Components::Base
      def initialize(form:, type:, name:, **attrs)
        @form = form
        @type = type
        @name = name
        @attrs = attrs

        super()
      end

      def view_template
        @form.send(:"#{@type}_field", @name, **mix(default_attrs, @attrs))
      end

      private

      def default_attrs
        {
          class: "flex h-9 w-full rounded-md border bg-background px-3 py-1 text-sm shadow-sm transition-colors file:border-0 file:bg-transparent file:text-sm file:font-medium file:text-muted-foreground file:pt-1 focus-visible:outline-none focus-visible:ring-1 disabled:cursor-not-allowed disabled:opacity-50 border-border focus-visible:ring-ring placeholder:text-muted-foreground"
        }
      end
    end
  end
end
