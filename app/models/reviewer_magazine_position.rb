class ReviewerMagazinePosition < ApplicationRecord
    #has_and_belongs_to_many :magazine
    #has_and_belongs_to_many :reviewer
    #has_and_belongs_to_many :positions, dependent: :destroy

    #accepts_nested_attributes_for :positions, reject_if: :all_blank, allow_destroy: true

end
