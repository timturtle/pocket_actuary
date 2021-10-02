class AddCustomerIdToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :customer_id, :integer
    add_index :users, :customer_id
  end
end
