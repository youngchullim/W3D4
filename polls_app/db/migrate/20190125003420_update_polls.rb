class UpdatePolls < ActiveRecord::Migration[5.1]
  def change
    change_column :polls, :title, :string, null: false 
    change_column :polls, :author_id, :integer, null: false 
  end
end
