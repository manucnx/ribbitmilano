class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :commenter
      t.text :body
      t.references :ribbit

      t.timestamps
    end
    add_index :comments, :ribbit_id
  end
end
