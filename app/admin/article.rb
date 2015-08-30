ActiveAdmin.register Article do

permit_params :first, :title, :description, :themes, :user_id, :second, :articles, :publish, :contentpicture_file_name, :picture_file_size, :picture_updated_at, :content, :picture_file_name
actions :all
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if resource.something?
#   permitted
# end
index do
    selectable_column
    column :id
    column :title
    column :first
    column :second
    column :description
    column :themes
    column :admin
    column :article_a_id
    column :article_b_id
    column :articles
    column :publish
    actions
  end
end
