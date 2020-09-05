require 'net/http'
require 'open-uri'
require 'json'

class GetRequester
    attr_accessor :url

    # URL = https://learn-co-curriculum.github.io/json-site-example/endpoints/people.json
    def initialize(url)
        @url = url
    end

    def get_response_body
    # method that sends a GET request to the URL passed in on initialization. This method should return the body of the response.
    uri = URI.parse(self.url)
    response = Net::HTTP.get_response(uri)
    response.body
    end

    def parse_json
    # method should use get_response_body to send a request, 
    # then return a Ruby Array or Hash made up of data converted from the response of that request.
    data = JSON.parse(self.get_response_body)
    end

end