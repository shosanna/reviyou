class RenameEndOffsetToLength < ActiveRecord::Migration
  def change
    rename_column :comments, :end_offset, :length
  end
end
