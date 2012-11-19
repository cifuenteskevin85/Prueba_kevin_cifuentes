class AddColum < ActiveRecord::Migration
  def up
    add_column :coments, :post_id, :string
    add_index :coments, :post_id
  end

  def down
  end
end
