class AddFirstNameAndLastNameToTrips < ActiveRecord::Migration[6.0]
  def change
    add_column :trips, :first_name, :string
    add_column :trips, :last_name, :string
  end
end
