class CreatePostComments < ActiveRecord::Migration[5.0]
  def change
    create_table :post_comments do |t|
      t.string :name
      t.string :email
      t.text :body
      t.references :post, foreign_key: true

      t.timestamps
    end
    add_index :post_comments, :post_id
  end
end
