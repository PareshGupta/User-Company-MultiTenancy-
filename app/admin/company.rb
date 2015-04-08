ActiveAdmin.register Company do
  permit_params :name, :industry_type, :description, :subdomain

  index do
    column :id
    column :name
    column :industry_type
    column :description do |company|
      truncate(company.description, length: 50, separator: '')
    end
    column :created_at
    actions
  end

end
