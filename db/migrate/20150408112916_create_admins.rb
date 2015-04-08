class CreateAdmins < ActiveRecord::OwnerMigration
  def change
    create_table :admins do |t|
      t.timestamp
    end
  end
end
