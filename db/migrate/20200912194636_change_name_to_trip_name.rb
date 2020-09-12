class ChangeNameToTripName < ActiveRecord::Migration[6.0]
  def change
    rename_column :trips, :name, :trip_name
  end
end
