class CreateQuestions < ActiveRecord::Migration[5.1]
  def change
    create_table :questions do |t|
      t.text :text, NULL: false
      t.integer :poll_id
      t.timestamps
    end
  end
end
