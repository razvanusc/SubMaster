class AddWebsiteUrlToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :website_url, :string
  end
end
