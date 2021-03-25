class RemoveColumnFromReviewerMagazine < ActiveRecord::Migration[5.2]
  def change
    remove_column :reviewer_magazines, :position
  end
end
