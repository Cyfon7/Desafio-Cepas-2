class CreateJoinTableWineReviewer < ActiveRecord::Migration[5.2]
  def change
    create_join_table :wines, :reviewers do |t|
      # t.index [:wine_id, :reviewer_id]
      # t.index [:reviewer_id, :wine_id]

      t.belongs_to :wine, index: true
      t.belongs_to :reviewer, index: true
      t.integer :score#, default: 100

      t.timestamps
    end

    rename_table :reviewers_wines, :wine_reviewers
    add_column :wine_reviewers, :id, :primary_key
  end
end
