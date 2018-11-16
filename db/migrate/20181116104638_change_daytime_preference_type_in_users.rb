class ChangeDaytimePreferenceTypeInUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :daytime_preference, :datetime
    add_column :users, :daytime_preference, :string
  end
end
