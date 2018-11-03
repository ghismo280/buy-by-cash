class AddAskForJobToConversations < ActiveRecord::Migration[5.2]
  def change
    add_column :conversations, :ask_for_job, :boolean, default: false
  end
end
