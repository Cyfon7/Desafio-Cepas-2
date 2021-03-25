class CreateGrapes < ActiveRecord::Migration[5.2]
  def change
    create_table :grapes do |t|
      t.string :name, null: false

      t.timestamps
    end

    add_index :grapes, :name, unique: true
  end
end
