require File.join(File.dirname(__FILE__), 'router')

class RackApp
  attr_reader :router

  def initialize
    @router = Router.new
  end
end
