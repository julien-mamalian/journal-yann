class AddIdToConnectionArticles < ActiveRecord::Migration
  def change
    add_column :article_connections, :id, :primary_key
  end
end
