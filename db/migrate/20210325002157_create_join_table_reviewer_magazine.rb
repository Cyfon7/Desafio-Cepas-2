class CreateJoinTableReviewerMagazine < ActiveRecord::Migration[5.2]
  def change
    create_join_table :reviewers, :magazines do |t|
      # t.index [:reviewer_id, :magazine_id]
      # t.index [:magazine_id, :reviewer_id]
      t.belongs_to :reviewer, index: true
      t.belongs_to :magazine, index: true
      t.integer :position
      t.timestamps
    end

    rename_table :magazines_reviewers, :reviewer_magazines
    add_column :reviewer_magazines, :id, :primary_key
  end
end
