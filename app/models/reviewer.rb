class Reviewer < ApplicationRecord
    #has_many :reviewer_magazine_positions
    #has_many :magazines, through: :reviewer_magazine_positions, dependent: :destroy
    #has_many :positions, through: :reviewer_magazine_positions, dependent: :destroy

    has_and_belongs_to_many :magazines, dependent: :destroy
    has_and_belongs_to_many :positions, dependent: :destroy

    #accepts_nested_attributes_for :reviewer_magazine_positions, reject_if: :all_blank, allow_destroy: true
    
    
    accepts_nested_attributes_for :magazines, reject_if: :all_blank, allow_destroy: true
    accepts_nested_attributes_for :positions, reject_if: :all_blank, allow_destroy: true

    validates :name, :age, :nationality, presence: true
end
