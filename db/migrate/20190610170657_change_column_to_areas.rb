class ChangeColumnToAreas < ActiveRecord::Migration[5.0]
  def change
    remove_column :areas, :area, :string
    remove_column :areas, :pref, :string
    add_column :areas, :name, :string
  end
end
