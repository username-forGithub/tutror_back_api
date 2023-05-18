class AddExperienceToTutors < ActiveRecord::Migration[7.0]
  def change
    add_column :tutors, :experience, :json
  end
end
