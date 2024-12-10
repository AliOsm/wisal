class Components::Base < Phlex::HTML
  include Components
  include RubyUI

  # Include any helpers you want to be available across all components
  include ::Devise::Controllers::UrlHelpers
  include Phlex::Rails::Helpers::Routes

  register_output_helper :display_meta_tags
  register_value_helper :set_meta_tags

  def rtl?
    I18n.locale == :ar
  end

  def html_dir
    rtl? ? :rtl : :ltr
  end

  if Rails.env.development?
    def before_template
      comment { "Before #{self.class.name}" }
      super
    end
  end
end
