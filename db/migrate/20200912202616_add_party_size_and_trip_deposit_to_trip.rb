class AddPartySizeAndTripDepositToTrip < ActiveRecord::Migration[6.0]
  def change
    add_column :trips, :party_size, :string
    add_column :trips, :trip_deposit, :boolean
  end
end
