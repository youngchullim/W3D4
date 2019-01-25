class UpdateAnswerChoices < ActiveRecord::Migration[5.1]
  def change
    change_column :answer_choices, :text, :text, null: false 
    change_column :answer_choices, :question_id, :integer, null: false 
  end
end
