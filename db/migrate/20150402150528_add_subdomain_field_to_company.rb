class AddSubdomainFieldToCompany < ActiveRecord::OwnerMigration
  def change
    add_column :companies, :subdomain, :string
  end
end
