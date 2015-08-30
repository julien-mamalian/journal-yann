class RemoveColumnToArticles < ActiveRecord::Migration
  def change
    remove_column :articles, :picture_content_type
  end
end
