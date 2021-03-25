class ReviewerMagazine < ApplicationRecord
    belongs_to :magazine
    belongs_to :reviewer
    has_many :position
end
