class CreateReversations < ActiveRecord::Migration[6.0]
  def change
    create_table :reversations do |t|
      t.belongs_to :trip, null: false, foreign_key: true
      t.belongs_to :location, null: false, foreign_key: true

      t.timestamps
    end
  end
end
