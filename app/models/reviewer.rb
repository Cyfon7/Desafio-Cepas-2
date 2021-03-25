class Reviewer < ApplicationRecord
    has_many :reviewer_magazines
    has_many :magazines, through: :reviewer_magazines, dependent: :destroy

    accepts_nested_attributes_for :reviewer_magazines, reject_if: :all_blank, allow_destroy: true

    validates :name, :age, :nationality, presence: true
end
