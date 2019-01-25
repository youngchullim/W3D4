class UpdateQuestions < ActiveRecord::Migration[5.1]
  def change
    change_column :questions, :text, :text, null: false 
    change_column :questions, :poll_id, :integer, null: false 
  end
end
