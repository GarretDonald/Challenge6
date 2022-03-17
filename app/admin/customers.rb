ActiveAdmin.register Customer do
  permit_params :full_name, :phone_number, :email, :password, :password_confirmation, :image

  index do
    selectable_column
    id_column
    column :email
    column :current_sign_in_at
    column :sign_in_count
    column :created_at
    actions
  end

  filter :email
  filter :current_sign_in_at
  filter :sign_in_count
  filter :created_at

  form do |f|
    f.inputs do
      f.input :full_name
      f.input :phone_number
      f.input :email
      f.input :password
      f.input :password_confirmation
      f.input :notes
      f.input :image, as: :file, hint: f.object.image.present? ? image_tag(f.object.image, width:"200") : ""
    end
    f.actions
  end

end
