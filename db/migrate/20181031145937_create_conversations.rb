class CreateConversations < ActiveRecord::Migration[5.2]
  def change
    create_table :conversations do |t|
      t.string :string
      t.references :user, foreign_key: true
      t.integer :recipient_id

      t.timestamps
    end
  end
end
