ENV["SINATRA_ENV"] ||= "development"

require_relative './config/environment'
require 'sinatra/activerecord/rake'


task :console do
    puts "Loading your application environment"
    reload!
    puts "Console Started!"
    Pry.start
end

