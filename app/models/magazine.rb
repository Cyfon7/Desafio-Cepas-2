class Magazine < ApplicationRecord
    has_many :reviewer_magazines
    has_many :reviewers, through: :reviewer_magazines, dependent: :destroy

    validates :name, presence: true
end
