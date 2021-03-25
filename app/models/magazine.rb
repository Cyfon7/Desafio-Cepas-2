class Magazine < ApplicationRecord

    has_and_belongs_to_many :reviewers, dependent: :destroy
    has_and_belongs_to_many :positions, dependent: :destroy

    accepts_nested_attributes_for :positions, reject_if: :all_blank, allow_destroy: true

    validates :name, presence: true
end
