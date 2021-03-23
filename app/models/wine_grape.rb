class WineGrape < ApplicationRecord
    belongs_to :wine
    belongs_to :grape

    validates :percent, numericality: { greather_than: -1, less_than: 101 }, presence: true
    scope :order_by_grape, -> { joins(:grape).order(name: :asc) };
end