class RemoveColumnToUsers < ActiveRecord::Migration
  def change
    remove_column :users, :picture_content_type
  end
end
