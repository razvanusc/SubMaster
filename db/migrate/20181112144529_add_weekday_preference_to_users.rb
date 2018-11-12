class AddWeekdayPreferenceToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :weekday_preference, :datetime
  end
end
