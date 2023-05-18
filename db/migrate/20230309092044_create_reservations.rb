class CreateReservations < ActiveRecord::Migration[7.0]
  def change
    create_table :reservations do |t|
      t.string "city"
      t.datetime "reservation_date"
      t.datetime "returning_date"
      t.references :user, null: false, foreign_key: true
      t.references :tutor, null: false, foreign_key: true

      t.timestamps
    end
  end
end
