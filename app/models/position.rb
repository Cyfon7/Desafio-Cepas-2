class Position < ApplicationRecord
#Separated Tables
=begin
    has_and_belongs_to_many :reviewers, dependent: :destroy
=end

    #has_and_belongs_to_many :reviewer_magazine_positions, dependent: :destroy

    validates :name, presence: true
end
