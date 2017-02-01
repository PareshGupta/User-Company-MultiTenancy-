ActiveAdmin.register User do

  permit_params :firstname, :lastname, :email, :admin, :password, :password_confirmation, :contact_number

  index do
    selectable_column
    id_column
    column :firstname
    column :lastname
    column :email
    column :current_sign_in_at
    column :sign_in_count
    column :created_at
    column :admin
    actions
  end

  filter :email
  filter :current_sign_in_at
  filter :sign_in_count
  filter :created_at

  form do |f|
    f.inputs "User Details" do
      f.input :firstname
      f.input :lastname
      f.input :email
      f.input :contact_number
      f.input :admin
      if f.object.new_record?
        f.input :password
        f.input :password_confirmation
      end
    end
    f.actions
  end

end
