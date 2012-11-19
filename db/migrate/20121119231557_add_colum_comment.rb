class AddColumComment < ActiveRecord::Migration
  def change
    add_column :coments, :post_id, :string
    add_index :coments, :post_id
  end
end
