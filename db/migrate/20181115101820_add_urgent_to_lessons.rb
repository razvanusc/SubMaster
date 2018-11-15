class AddUrgentToLessons < ActiveRecord::Migration[5.2]
  def change
    add_column :lessons, :urgent, :boolean
  end
end
