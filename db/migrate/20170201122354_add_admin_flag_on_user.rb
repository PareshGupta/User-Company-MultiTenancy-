class AddAdminFlagOnUser < ActiveRecord::Migration
  def change
    add_column :users, :admin, :boolean, default: true, null: false
  end
end
