ENV['SINATRA_ENV'] ||= "development"

module ChoreApp
end

require 'bundler/setup'
Bundler.require(:default, ENV['SINATRA_ENV'])
configure :development do
  set :database, 'sqlite3:db/development.sqlite'
end 

ActiveRecord::Base.establish_connection(
  :adapter => "sqlite3",
  :database => "db/#{ENV['SINATRA_ENV']}.sqlite"
)
require 'rack-flash'
require './app/controllers/application_controller'
require_all 'app'

