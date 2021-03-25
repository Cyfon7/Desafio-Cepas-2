class AddIndexToReviewerMagazines < ActiveRecord::Migration[5.2]
  def change
    add_reference :reviewer_magazines, :position, foreign_key: true
  end
end
