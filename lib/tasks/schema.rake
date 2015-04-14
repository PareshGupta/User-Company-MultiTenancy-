# db_namespace = namespace :db do
#   namespace :schema do
#     task(:dump).clear

#     desc 'Create a db/schema.rb file that is portable against any DB supported by AR'
#     task :dump => [:environment, :load_config] do
#       require 'active_record/schema_dumper'
#       filename = ENV['SCHEMA'] || File.join(ActiveRecord::Tasks::DatabaseTasks.db_dir, 'owner.rb')
#       File.open(filename, "w:utf-8") do |file|
#         ActiveRecord::SchemaDumper.dump(ActiveRecord::Base.connection, file)
#       end
#       db_namespace['schema:dump'].reenable
#     end

#   end
# end
