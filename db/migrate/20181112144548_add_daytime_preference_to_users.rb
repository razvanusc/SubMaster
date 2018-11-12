class AddDaytimePreferenceToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :daytime_preference, :datetime
  end
end
