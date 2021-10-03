class CreateInformation < ActiveRecord::Migration[6.1]
  def change
    create_table :information do |t|
      t.integer :age
      t.string :gender
      t.string :country
      t.string :state
      t.string :city
      t.string :street
      t.string :zipcode
      t.decimal :income
      t.decimal :expenses
      t.decimal :assets
      t.decimal :liabilities
      t.string :dependents
      t.string :health
      t.string :activity_levels

      t.timestamps
    end
  end
end
