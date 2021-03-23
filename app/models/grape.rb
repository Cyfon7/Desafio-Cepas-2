class Grape < ApplicationRecord
    has_many :wine_grapes
    has_many :wines, through: :wine_grapes, dependent: :destroy

    validates :name, presence: true
end
