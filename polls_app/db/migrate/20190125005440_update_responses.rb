class UpdateResponses < ActiveRecord::Migration[5.1]
  def change
    change_column :responses, :user_id, :integer, null: false 
    change_column :responses, :answer_id, :integer, null: false 
  end
end
