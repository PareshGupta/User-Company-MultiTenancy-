class AddCompanyIdToPerson < ActiveRecord::Migration
  def change
    add_column :people, :company_id, :integer, null: false
  end
end
