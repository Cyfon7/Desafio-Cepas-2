class WineReviewer < ApplicationRecord
    belongs_to :wine
    belongs_to :reviewer

    validates :score, numericality: { greather_than: -1, less_than: 101 }, presence: true
end
