ActiveAdmin.register User do

permit_params :first_name, :last_admin, :admin, :email, :encrypted_password, :reset_password_token, :reset_password_sent_at, :remember_created_at, :current_sign_in_at, :last_sign_in_at, :current_sign_in_ip, :last_sign_in_ip, :last_name, :picture_file_name, :picture_content_type, :picture_file_size, :picture_updated_at
index do
    selectable_column
    column :id
    column :email
    column :first_name
    column :last_name
    column :admin
    actions
  end
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


end
