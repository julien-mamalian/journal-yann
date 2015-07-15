class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :content
      t.boolean :first
      t.string :title
      t.string :description
      t.string :themes

      t.timestamps null: false
    end
  end
end
