class AddImageToFeed < ActiveRecord::Migration[5.2]
  def change
    add_column :feeds, :title, :string
    add_column :feeds, :content, :string
    add_column :feeds, :username, :string
  end

end
