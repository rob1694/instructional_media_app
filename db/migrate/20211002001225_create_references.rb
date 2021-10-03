class CreateReferences < ActiveRecord::Migration[6.1]
  def change
    create_table :references do |t|
      t.references :post, foreign_key: true 
      t.string :href, array: true

      t.timestamps
    end
    add_index :references, :href, using: 'gin'
  end
end
