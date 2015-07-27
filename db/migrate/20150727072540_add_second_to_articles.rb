class AddSecondToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :second, :boolean
  end
end
