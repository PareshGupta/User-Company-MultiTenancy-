class AddSubdomainFieldToCompany < ActiveRecord::TenantMigration
  def change
    add_column :companies, :subdomain, :string
  end
end
