class Route
  attr_accessor :klass_name, :path, :instance_method

  def initialize route_array
    @path            = route_array.first
    @klass_name      = route_array.last[:klass]
    @instance_method = route_array.last[:method]
    handle_requires
  end

  def klass
    Module.const_get(klass_name)
  end

  def execute(env)
    klass.new(env).send(instance_method.to_sym)
  end

  def controller_name
    klass_name.gsub(/([a-z])([A-Z])/,'\1_\2').downcase
  end

  def handle_requires
    require File.expand_path('../../app/controllers/base_controller', __FILE__)
    require File.expand_path("../../app/controllers/#{controller_name}", __FILE__)
  end
end


