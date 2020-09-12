class AddLocTypeAndMainActivityToLocations < ActiveRecord::Migration[6.0]
  def change
    add_column :locations, :loc_type, :string
    add_column :locations, :main_activity, :string
  end
end
