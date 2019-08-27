ENV['SINATRA_ENV'] ||= "development"

require 'bundler/setup'
Bundler.require(:default, ENV['SINATRA_ENV'])


# SETS UP CONNECTION TO A `sqlite3` DATABASE NAMED 'database.db' in 'db' folder -- doesn't actually create any files just by writing this
configure :development do
    set :database, 'sqlite3:db/database.db'
end 
# make a `Rakefile` in main directory next

require './app'