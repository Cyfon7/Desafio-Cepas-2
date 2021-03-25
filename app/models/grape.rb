class Grape < ApplicationRecord
    has_many :wine_grapes
    has_many :wines, through: :wine_grapes, dependent: :destroy

    validates :name, presence: true
    validates :name, uniqueness: true, allow_nil: false, allow_blank: false
end
