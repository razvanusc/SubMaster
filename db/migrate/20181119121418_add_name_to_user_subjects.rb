class AddNameToUserSubjects < ActiveRecord::Migration[5.2]
  def change
    add_column :user_subjects, :name, :string
  end
end
