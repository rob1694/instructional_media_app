class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.references :user, foreign_key: true 
      t.string :title
      t.string :description
      t.string :imgs, array: true
      t.string :steps, array: true
      t.string :items, array: true

      t.timestamps
    end
    add_index :posts, :imgs, using: 'gin'
    add_index :posts, :steps, using: 'gin'
    add_index :posts, :items, using: 'gin'
  end
end
