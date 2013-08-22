class AddUserIdToWallPosts < ActiveRecord::Migration
  def change
  	add_column :Wallposts, :user_id, :integer
  	add_index :wallposts, :user_id
  	remove_column :wallposts, :name
  end
end
