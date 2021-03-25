class Position < ApplicationRecord

    has_and_belongs_to_many :magazines, dependent: :destroy

    validates :name, presence: true
end
