ActiveAdmin.register History do
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
permit_params :user_id, :at_work, :not_at_work
form do |f|
  f.inputs do
    f.input :at_work
    f.input :not_at_work
    f.input :user_id, :as => :select, :collection => User.all.map{|u| ["#{u.fullname}", u.id]}
  end
  f.actions
end
end
