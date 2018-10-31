class AddColumnToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :age, :integer
    add_column :users, :address, :string
    add_column :users, :tagline, :text
    add_column :users, :bio, :text
    add_column :users, :average_rating, :integer
    add_column :users, :photo, :string
  end
end
