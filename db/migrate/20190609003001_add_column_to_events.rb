class AddColumnToEvents < ActiveRecord::Migration[5.0]
  def change
    add_column :events, :title, :string
    add_column :events, :content, :text
    add_column :events, :image, :string
    add_column :events, :location, :string
    add_column :events, :user_id, :integer
  end
end
