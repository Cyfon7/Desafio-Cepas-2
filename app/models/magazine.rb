class Magazine < ApplicationRecord
#Separated Tables
=begin
    has_and_belongs_to_many :reviewers, dependent: :destroy
=end

    #has_many :reviewer_magazines
    #has_many :reviewers, through: :reviewer_magazines, dependent: :destroy

    validates :name, presence: true
end
