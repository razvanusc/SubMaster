class AddFacebookUrlToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :facebook_url, :string
  end
end
