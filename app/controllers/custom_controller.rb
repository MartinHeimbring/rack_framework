class CustomController < BaseController
  def index
    Response.new.tap do |response|
      response.body        = "<h1>Hello World</h1>"
      response.status_code = 200
    end
  end

  def show
    Response.new.tap do |response|
      response.body        = "<h2>Matches Any Route<h2>"
      response.status_code = 200
    end
  end
end
