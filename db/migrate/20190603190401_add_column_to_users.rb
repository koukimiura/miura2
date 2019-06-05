class AddColumnToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :area_id, :integer
    add_column :users, :my_area_id, :integer
  end
end
