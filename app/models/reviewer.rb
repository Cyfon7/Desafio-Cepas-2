class Reviewer < ApplicationRecord

    has_and_belongs_to_many :magazines, dependent: :destroy

    accepts_nested_attributes_for :magazines, reject_if: :all_blank, allow_destroy: true

    validates :name, :age, :nationality, presence: true
end
