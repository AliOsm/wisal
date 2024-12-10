if ENV["BUILD"].blank? && !(Rails.env.development? && Rails.application.credentials.cloudflare.blank?)
  RailsCloudflareTurnstile.configure do |c|
    c.site_key = Rails.application.credentials.cloudflare.turnstile.site_key
    c.secret_key = Rails.application.credentials.cloudflare.turnstile.secret_key
    c.fail_open = true
  end

  RailsCloudflareTurnstile.configuration.size = :flexible
end
