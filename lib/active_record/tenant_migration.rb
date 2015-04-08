module ActiveRecord

  class TenantMigration < ActiveRecord::Migration

    def tenants
      ActiveRecord::Base.connection.execute "set search_path to public;"
      Company.pluck(:subdomain)
    end

    def set_search_path(tenant)
      ActiveRecord::Base.connection.execute "set search_path to #{tenant};"
    end

    def migrate(direction)
      tenants.each do |tenant|
        set_search_path(tenant)
        super
      end
    end

  end

end
