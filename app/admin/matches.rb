ActiveAdmin.register Match do
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

  permit_params :genre, :match_status, :match_name, :match_day, teams_attributes: [:id, :team_number, :pick_count, :team_name, :team_image_id, :_destroy]
  #mount_uploader :team_image, ImageUploader

  form(:html => { :multipart => true }) do |f|
    f.inputs "Details" do
      f.input :genre
      f.input :match_status
      f.input :match_name
      f.input :match_day
    end

    f.inputs do
      f.has_many :teams, heading: 'teams', allow_destroy: true, new_record: true do |a|
        a.input :team_number
        a.input :team_name
        a.input :team_image
      end
    end

    f.actions
end
end