require 'bundler/setup'
require "sinatra/activerecord"
Bundler.require

Dir[File.join(File.dirname(__FILE__), "../app/models", "*.rb")].each {|f| require f}

connection_details = YAML::load(File.open('config/database.yml'))
ActiveRecord::Base.establish_connection(connection_details)



# ActiveRecord::Base.establish_connection(
#   adapter: 'sqlite3',
#   database: "db/development.sqlite"
# )

# ActiveRecord::Base.logger = Logger.new(STDOUT)