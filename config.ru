Dir[File.dirname(__FILE__) + '/lib/*.rb'].each {|file| require file }

MainApplication = RackApp.new

# Load the routes
require File.join(File.dirname(__FILE__),'config', 'routes')

run RequestController.new
