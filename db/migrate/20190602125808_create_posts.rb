class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
          t.string :title
          t.text :content
          t.string :image
          t.string :image_cache
          t.string :remove_image


      t.timestamps
    end
  end
end
