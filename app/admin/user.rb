ActiveAdmin.register User do

  index do
    column :id
    column :name
    column :email
    column :created_at
    actions
  end

end