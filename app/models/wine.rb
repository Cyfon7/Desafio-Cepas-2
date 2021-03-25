class Wine < ApplicationRecord
    has_many :wine_grapes
    has_many :grapes, through: :wine_grapes, dependent: :destroy

    has_many :wine_reviewers
    has_many :reviewers, through: :wine_reviewers, dependent: :destroy

    accepts_nested_attributes_for :wine_grapes, reject_if: :all_blank, allow_destroy: true
    accepts_nested_attributes_for :wine_reviewers, reject_if: :all_blank, allow_destroy: true

    enum varietal: { single: 0, blended: 1 }

    validates :name, presence: true
    validates :varietal, presence: true

end
