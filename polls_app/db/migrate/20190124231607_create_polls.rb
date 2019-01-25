class CreatePolls < ActiveRecord::Migration[5.1]
  def change
    create_table :polls do |t|
      t.string :title, NULL: false
      t.integer :author_id, NULL: false
      t.timestamps
    end
    add_index :polls, :title, unique: true
  end
end
