class Components::Base < Phlex::HTML
  include Components
  include RubyUI
  include PhlexIcons

  # Include any helpers you want to be available across all components
  include ::Devise::Controllers::UrlHelpers
  include Phlex::Rails::Helpers::CSPMetaTag
  include Phlex::Rails::Helpers::CSRFMetaTags
  include Phlex::Rails::Helpers::Flash
  include Phlex::Rails::Helpers::FormWith
  include Phlex::Rails::Helpers::JavascriptIncludeTag
  include Phlex::Rails::Helpers::Routes
  include Phlex::Rails::Helpers::StylesheetLinkTag
  include Phlex::Rails::Helpers::T

  register_output_helper :cloudflare_turnstile
  register_output_helper :cloudflare_turnstile_script_tag
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
