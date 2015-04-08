class CreateCompany < ActiveRecord::TenantMigration
  def change
    create_table :companies do |t|
      t.string :name
      t.string :industry_type
      t.text :description

      t.timestamps
    end
  end
end
