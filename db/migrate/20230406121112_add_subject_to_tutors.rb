class AddSubjectToTutors < ActiveRecord::Migration[7.0]
  def change
    add_column :tutors, :subject, :jsonb
  end
end
