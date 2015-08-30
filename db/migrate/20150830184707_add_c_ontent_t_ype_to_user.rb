class AddCOntentTYpeToUser < ActiveRecord::Migration
  def change
    add_column :users, :picture_content_type, :string
  end
end
