class CreateWallposts < ActiveRecord::Migration
  def change
    create_table :wallposts do |t|
      t.string :name
      t.text :content

      t.timestamps
    end
  end
end
