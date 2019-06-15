class ChangeColumnToMessages < ActiveRecord::Migration[5.0]
  def change
    add_column :messages, :post_id, :integer
  end
end
