class CreateArticleConnections < ActiveRecord::Migration
  def change
    create_table :article_connections, :force => true, :id => false do |t|
      t.integer "article_a_id", :null => false
      t.integer "article_b_id", :null => false
      t.timestamps null: false
    end
  end
end
