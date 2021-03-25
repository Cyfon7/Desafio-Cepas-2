class AddIndexToReviewerMagazines < ActiveRecord::Migration[5.2]
  def change

    create_join_table :magazines, :positions do |t|
      # t.index [:magazines_id, :position_id]
      # t.index [:position_id, :magazines_id]
      t.belongs_to :magazine, index: true
      t.belongs_to :position, index: true

      t.timestamps
    end

    add_column :magazines_positions, :id, :primary_key
  end
end


