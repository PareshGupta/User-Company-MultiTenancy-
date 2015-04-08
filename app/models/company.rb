class Company < ActiveRecord::Base

  validates :name, presence: true
  validates :subdomain, presence: true,
                        uniqueness: { case_sensitive: false }

  after_create :create_schema
  after_destroy :delete_schema

  private

    def create_schema
      connection.execute("create schema #{ subdomain };")
      connection.execute("set search_path to #{subdomain};")
      connection.initialize_schema_migrations_table
    end

    # def set_search_path
    #   load_tables
    # end

    # def load_tables
    #   load "#{Rails.root}/db/schema.rb"
    #   restore_default_search_path
    # end

    # def restore_default_search_path
    #   ActiveRecord::Base.connection.execute('set search_path to public;')
    # end

    def delete_schema
      ActiveRecord::Base.connection.execute("drop schema #{subdomain}")
    end

end