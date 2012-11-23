class AddColumnToComment < ActiveRecord::Migration
  def change
  	add_column :comments, :id, :primary_key
  	add_index :comments, :id, :unique => true
  end
end
