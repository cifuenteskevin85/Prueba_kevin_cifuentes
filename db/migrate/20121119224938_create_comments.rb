class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :pseudonimo
      t.text :mensaje

      t.timestamps
    end
  end
end
