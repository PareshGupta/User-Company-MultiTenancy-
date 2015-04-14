ActiveAdmin.register Company do
  permit_params :name, :industry_type, :description, :subdomain, owner_attributes: [:name, :email, :password, :password_confirmation]

  config.comments = false

  index do
    column :id
    column :name
    column :owner
    column :industry_type
    column :description do |company|
      truncate(company.description, length: 50, separator: '')
    end
    column :subdomain
    column :created_at
    actions
  end

  show do
    attributes_table do
      row :id
      row :name
      row :industry_type
      row :description
      row :owner
      row :subdomain
      row :created_at
      row :updated_at
    end
  end

  form do |f|
    f.inputs 'Company Details' do
      f.input :name
      f.input :description
      f.input :industry_type
      f.input :subdomain

      f.inputs 'Owner Details' do
        f.semantic_fields_for :owner, f.object.owner || f.object.build_owner do |owner|
          owner.input :name
          owner.input :email
          owner.input :password, hint: '(minimum 8 characters)'
          owner.input :password_confirmation
        end
      end

      f.actions
    end
  end

  # sidebar :help do
  #   "Need help? Email us at help@example.com"
  # end

end
