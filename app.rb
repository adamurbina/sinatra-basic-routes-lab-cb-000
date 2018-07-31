require_relative 'config/environment'

class App < Sinatra::Base

    def call(env)
        request = Rack::Request.new(env)
        response = Rack::Response.new

        route = request.path.split("/").last

        response.finish
    end

end
