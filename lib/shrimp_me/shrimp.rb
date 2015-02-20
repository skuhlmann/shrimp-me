require 'httparty'

module ShrimpMe
  class Shrimp
    include HTTParty
    attr_reader :base_uri

    def initialize
      @base_uri = "http://www.shrimpy.me/api/v1/urls.json"
    end

    def shorten(full_url)
      response = post_url(full_url)
      "http://shrimpy.me/#{response["slug"]}"
    end

    def post_url(full_url)
      options = {
        body: {
          url: {
            full_url: full_url
          }
        }
      }

      HTTParty.post(base_uri, options)
    end
  end
end
