class CreateWeapons < ActiveRecord::Migration[5.0]
  def change
    create_table :weapons do |t|
      t.integer :zombie_id
      t.string :name
      t.string :health
      t.timestamps
    end
    add_index :weapons, :zombie_id, unique: true
  end
end
