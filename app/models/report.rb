class Report < ApplicationRecord
  include MeiliSearch::Rails

  extend Pagy::Meilisearch
  ActiveRecord_Relation.include Pagy::Meilisearch

  has_one_attached :image

  validates :name, :age, :contact, presence: true
  validates :age, numericality: { only_integer: true, greater_than: 0 }

  meilisearch do
    attribute %i[name age last_known_place characteristics contact]

    searchable_attributes %i[name last_known_place characteristics contact]
    filterable_attributes %i[age]
  end
end
