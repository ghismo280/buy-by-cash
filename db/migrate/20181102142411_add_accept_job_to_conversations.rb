class AddAcceptJobToConversations < ActiveRecord::Migration[5.2]
  def change
    add_column :conversations, :accept_job, :boolean, default: false
  end
end
