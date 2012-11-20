class AddColumnToComment < ActiveRecord::Migration
  def change
    remove_column :comments, :id
    add_index :comments, :post_id
  end
end
