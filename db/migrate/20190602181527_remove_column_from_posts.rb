class RemoveColumnFromPosts < ActiveRecord::Migration[5.0]
  def change
    remove_column :posts, :image_cache, :string
    remove_column :posts, :remove_image, :string
  end
end
