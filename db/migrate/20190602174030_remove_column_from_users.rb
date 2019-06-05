class RemoveColumnFromUsers < ActiveRecord::Migration[5.0]
  def change
    remove_column :users, :image_cacheprofile_, :string
    remove_column :users, :profile_remove_image, :string
  end
end
