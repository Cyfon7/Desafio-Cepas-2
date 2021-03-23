class Wine < ApplicationRecord
    has_many :wine_grapes
    has_many :grapes, through: :wine_grapes, dependent: :destroy

    accepts_nested_attributes_for :wine_grapes, reject_if: :all_blank, allow_destroy: true

    enum varietal: { single: 0, blended: 1 }

    validates :name, presence: true
    validates :varietal, presence: true

end
