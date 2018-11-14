class RemoveStatutsFromLessons < ActiveRecord::Migration[5.2]
  def change
    remove_column :lessons, :statuts, :integer
  end
end
