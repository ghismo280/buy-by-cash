class AddFeeAndStartDateToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :fee, :float
    add_column :users, :start_date, :string
  end
end
