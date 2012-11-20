class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :pseudonimo
      t.text :mensaje
      t.integer :post_id

      t.timestamps
    end
  end
end
