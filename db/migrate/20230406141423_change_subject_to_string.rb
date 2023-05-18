class ChangeSubjectToString < ActiveRecord::Migration[7.0]
  change_column :tutors, :subject, :string
end
