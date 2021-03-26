class WineReviewer < ApplicationRecord
    belongs_to :wine
    belongs_to :reviewer

    validates :score, numericality: { greather_than: -1, less_than: 101 }, presence: true
    
    scope :reviews_current_wine, -> (id){ select{ |review| review.wine_id == id } };
end
