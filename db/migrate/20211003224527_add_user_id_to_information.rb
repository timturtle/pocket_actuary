class AddUserIdToInformation < ActiveRecord::Migration[6.1]
  def change
    add_column :information, :user_id, :integer
    add_index :information, :user_id
  end
end
