class AddIndexToReviewerMagazines < ActiveRecord::Migration[5.2]
  def change
=begin
    rename_table :reviewer_magazines, :reviewer_magazine_positions
    add_reference :reviewer_magazine_positions, :position, foreign_key: true
=end
    create_join_table :reviewers, :positions do |t|
      # t.index [:reviewer_id, :position_id]
      # t.index [:position_id, :reviewer_id]
      t.belongs_to :reviewer, index: true
      t.belongs_to :position, index: true

      t.timestamps
    end

=begin
    rename_table :positions_reviewers, :reviewer_positions
    add_column :reviewer_positions, :id, :primary_key
=end

    add_column :positions_reviewers, :id, :primary_key
  end
end
