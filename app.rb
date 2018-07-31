require_relative 'config/environment'

class App < Sinatra::Base

    def call(env)
        request = Rack::Request.new(env)
        response = Rack::Response.new

        route = request.path.split("/").last
        puts "route value:: >> #{route}"

        response.write handle_request(route)

        response.finish
    end

    def handle_request(route)
        case route
        when "name"
            return "My name is Adam"
        when "hometown"
            return "My hometown is San Fracisco"
        when "favorite-song"
            return "California Love"
        end
    end

end
