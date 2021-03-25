class Position < ApplicationRecord
    #has_and_belongs_to_many :reviewer_magazine_positions, dependent: :destroy

    has_and_belongs_to_many :reviewers, dependent: :destroy

    validates :name, presence: true
end
