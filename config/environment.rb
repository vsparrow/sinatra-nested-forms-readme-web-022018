ENV['SINATRA_ENV'] ||= "development"

require 'bundler/setup'
Bundler.require(:default, ENV['SINATRA_ENV'])

# require './app/controllers/app.rb'
# # require_all 'models'
# require './app/'

Dir[File.join(File.dirname(__FILE__), "../app/models", "*.rb")].each {|f| require f}
Dir[File.join(File.dirname(__FILE__), "../app/controllers", "*.rb")].each {|f| require f}
Dir[File.join(File.dirname(__FILE__), "../app/views", "*.erb")].each {|f| require f}
