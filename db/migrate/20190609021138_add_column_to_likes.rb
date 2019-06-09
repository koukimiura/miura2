class AddColumnToLikes < ActiveRecord::Migration[5.0]
  def change
    add_column :likes, :event_id, :integer
  end
end
