class Components::Shared::Head < Components::Base
  def view_template
    head do
      meta_tags
      links_and_scripts
    end
  end

  private

  def meta_tags
    raw(display_meta_tags(site: t("wisal")))

    meta charset: "utf-8"

    meta name: "viewport", content: "width=device-width,initial-scale=1"

    meta name: "view-transition", content: "same-origin"

    csp_meta_tag
    csrf_meta_tags
  end

  def links_and_scripts
    link rel: "manifest", href: "/manifest.json"
    link rel: "icon", href: "/favicon.png", type: "image/png"

    link rel: "preconnect", href: "https://fonts.googleapis.com"
    link rel: "preconnect", href: "https://fonts.gstatic.com", crossorigin: true

    link href: "https://fonts.googleapis.com/css2?family=El+Messiri:wght@400..700&family=Noto+Naskh+Arabic&family=Tajawal&display=swap",
         rel: "stylesheet"

    stylesheet_link_tag "application", data_turbo_track: Rails.env.production? ? "reload" : ""
    javascript_include_tag "application", data_turbo_track: Rails.env.production? ? "reload" : "", defer: true, nonce: true

    raw(cloudflare_turnstile_script_tag)
  end
end
