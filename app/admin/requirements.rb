ActiveAdmin.register Requirement do
	permit_params :title, :Project_requirements, :published_at, :user_id
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

show do
 attributes_table do
 	row :title
 	row :Project_requirements
 	row :published_at
 	row :user_id
 	row :updated_at
 end
end

end
