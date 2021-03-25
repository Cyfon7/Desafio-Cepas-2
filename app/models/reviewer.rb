class Reviewer < ApplicationRecord

    has_and_belongs_to_many :magazines, dependent: :destroy

    has_many :wine_reviewers
    has_many :wines, through: :wine_reviewers, dependent: :destroy


    accepts_nested_attributes_for :magazines, reject_if: :all_blank, allow_destroy: true

    validates :name, :age, :nationality, presence: true


    scope :order_enologist_by_age, -> { order(age: :desc) };
end
