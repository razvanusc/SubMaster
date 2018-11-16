class ChangeWeekdayPreferenceTypeInUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :weekday_preference, :datetime
    add_column :users, :weekday_preference, :string
  end
end
