class AddResDateToReservations < ActiveRecord::Migration[6.0]
  def change
    add_column :reservations, :res_date, :string
  end
end
