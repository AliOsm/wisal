class Report < ApplicationRecord
  include MeiliSearch::Rails

  extend Pagy::Meilisearch
  ActiveRecord_Relation.include Pagy::Meilisearch

  has_one_attached :image

  validates :name, presence: true
  validates :age, presence: true
  validates :last_known_place, presence: true
  validates :characteristics, presence: true
  validates :contact, presence: true

  meilisearch do
    attribute %i[name age last_known_place characteristics contact]

    searchable_attributes %i[name last_known_place characteristics contact]
    filterable_attributes :age
  end
end
