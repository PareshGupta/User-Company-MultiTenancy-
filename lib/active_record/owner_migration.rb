module ActiveRecord

  class OwnerMigration < ActiveRecord::Migration

    def set_search_path
      ActiveRecord::Base.connection.execute "set search_path to public;"
    end

    def migrate(direction)
      debugger
      set_search_path
      super
    end

  end

end
