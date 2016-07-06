module Ruboty
  module Vulca
    module Api
      def connection
        uri = "http://localhost:8000"
        conn = Faraday.new(:url => uri) do |faraday|
          faraday.request :url_encoded
          faraday.response :logger
          faraday.adapter Faraday.default_adapter
        end
        return conn
      end
    end
  end
end
