class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts, id: :uuid do |t|
      t.string :title
      t.text :content
      t.references :user

      t.timestamps
    end
  end
end
