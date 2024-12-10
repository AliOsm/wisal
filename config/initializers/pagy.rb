require "pagy/extras/i18n"
require "pagy/extras/meilisearch"
require "pagy/extras/pagy"
require "pagy/extras/overflow"
require "pagy/extras/trim"

Pagy::DEFAULT[:overflow] = :last_page
Pagy::DEFAULT[:steps] = { 0 => 5, 540 => 7, 720 => 9 }

Pagy::I18n.load(locale: "ar")
