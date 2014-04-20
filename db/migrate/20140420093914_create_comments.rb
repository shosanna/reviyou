class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :text
      t.text :selected_text
      t.integer :start_offset
      t.integer :end_offset
      t.references :post, index: true

      t.timestamps
    end
  end
end
