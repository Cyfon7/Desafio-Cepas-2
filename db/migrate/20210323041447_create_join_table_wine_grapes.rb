class CreateJoinTableWineGrapes < ActiveRecord::Migration[5.2]
  def change
    create_join_table :wines, :grapes do |t|
      # t.index [:wine_id, :grape_id]
      # t.index [:grape_id, :wine_id]
      t.belongs_to :wine, index: true
      t.belongs_to :grape, index: true
      t.integer :percent#, default: 100
      t.timestamps
    end

    rename_table :grapes_wines, :wine_grapes
    add_column :wine_grapes, :id, :primary_key

  end
  
end
