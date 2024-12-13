class Components::Layouts::Default < Components::Base
  def view_template(&block)
    doctype

    html dir: html_dir, lang: I18n.locale do
      render Shared::Head.new

      body do
        # render Shared::Flash.new
        # render Shared::Navbar.new

        main(&block)
      end
    end
  end
end
