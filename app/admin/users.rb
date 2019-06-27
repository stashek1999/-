# frozen_string_literal: true

ActiveAdmin.register User do
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
  permit_params :fullname, :email, :position_id, :at_work, :not_at_work
  form do |f|
    f.inputs do
      f.input :fullname
      f.input :email
      f.input :at_work
      f.input :not_at_work
      f.input :position_id, :as => :select, :collection => Position.all.map{|u| ["#{u.name}", u.id]}
    end
    f.actions
  end
end
