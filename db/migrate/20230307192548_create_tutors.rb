class CreateTutors < ActiveRecord::Migration[7.0]
  def change
    create_table :tutors do |t|
      t.string :name
      t.text :description
      t.text :image
      t.integer :price

      t.timestamps
    end
  end
end
