class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.references :user, foreign_key: true
      t.integer :stars
      t.text :body
      t.integer :recipient_id

      t.timestamps
    end
  end
end
