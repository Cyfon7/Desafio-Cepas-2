class Position < ApplicationRecord
    belongs_to :reviewer_magazines

    validates :name, presence: true
end
