source "https://rubygems.org"

gem "cancancan", "~> 3.6", ">= 3.6.1"
gem "devise", "~> 4.9", ">= 4.9.4"
gem "devise-i18n", "~> 1.12", ">= 1.12.1"
gem "get_process_mem", "~> 1.0"
gem "meilisearch-rails", "~> 0.14.1"
gem "meta-tags", "~> 2.22", ">= 2.22.1"
gem "oj", "~> 3.16", ">= 3.16.7"
gem "pagy", "~> 9.3", ">= 9.3.2"
gem "rails_cloudflare_turnstile", github: "instrumentl/rails-cloudflare-turnstile"
gem "rails-i18n", "~> 8.0", ">= 8.0.1"
gem "rails_performance", "~> 1.4", ">= 1.4.1"
gem "phlex-icons", "~> 2.0"
gem "phlex-rails", github: "phlex-ruby/phlex-rails"
gem "ruby_ui", github: "ruby-ui/ruby_ui"
gem "sys-cpu", "~> 1.1"
gem "sys-filesystem", "~> 1.5", ">= 1.5.3"
gem "tailwind_merge", "~> 0.13.3"

group :development do
  gem "bundler-audit", "~> 0.9.1"
  gem "i18n-tasks", "~> 1.0", ">= 1.0.14"
  gem "ruby_audit", "~> 2.3", ">= 2.3.1"
end

# Bundle edge Rails instead: gem "rails", github: "rails/rails", branch: "main"
gem "rails", "~> 8.0.0"
# The modern asset pipeline for Rails [https://github.com/rails/propshaft]
gem "propshaft"
# Use sqlite3 as the database for Active Record
gem "sqlite3", ">= 2.1"
# Use the Puma web server [https://github.com/puma/puma]
gem "puma", ">= 5.0"
# Bundle and transpile JavaScript [https://github.com/rails/jsbundling-rails]
gem "jsbundling-rails"
# Hotwire's SPA-like page accelerator [https://turbo.hotwired.dev]
gem "turbo-rails"
# Hotwire's modest JavaScript framework [https://stimulus.hotwired.dev]
gem "stimulus-rails"
# Bundle and process CSS [https://github.com/rails/cssbundling-rails]
gem "cssbundling-rails"
# Build JSON APIs with ease [https://github.com/rails/jbuilder]
gem "jbuilder"

# Use Active Model has_secure_password [https://guides.rubyonrails.org/active_model_basics.html#securepassword]
# gem "bcrypt", "~> 3.1.7"

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: %i[ windows jruby ]

# Use the database-backed adapters for Rails.cache, Active Job, and Action Cable
gem "solid_cache"
gem "solid_queue"
gem "solid_cable"

# Reduces boot times through caching; required in config/boot.rb
gem "bootsnap", require: false

# Add HTTP asset caching/compression and X-Sendfile acceleration to Puma [https://github.com/basecamp/thruster/]
gem "thruster", require: false

# Use Active Storage variants [https://guides.rubyonrails.org/active_storage_overview.html#transforming-images]
# gem "image_processing", "~> 1.2"

group :development, :test do
  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem "debug", platforms: %i[ mri windows ], require: "debug/prelude"

  # Static analysis for security vulnerabilities [https://brakemanscanner.org/]
  gem "brakeman", require: false

  # Omakase Ruby styling [https://github.com/rails/rubocop-rails-omakase/]
  gem "rubocop-rails-omakase", require: false
end

group :development do
  # Use console on exceptions pages [https://github.com/rails/web-console]
  gem "web-console"
end

group :test do
  # Use system testing [https://guides.rubyonrails.org/testing.html#system-testing]
  gem "capybara"
  gem "selenium-webdriver"
end
