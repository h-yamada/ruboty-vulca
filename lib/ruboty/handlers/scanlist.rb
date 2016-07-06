require "ruboty/handlers/api"
require "faraday"
require "json"


module Ruboty
 module Handlers
  class ScanList < Base
    include Ruboty::Vulca::Api
    on(
    /scanlist/,
    name: 'scanlist',
    description: 'return server list'
    )

    def scanlist(message)
      conn = connection
      response = conn.get '/scanlist'
      @json_response = JSON.parse(response.body)

      res_message = ''
      @json_response.each do |item|
        res_message << item
        res_message << "\n"
      end
      message.reply(res_message)
    end
  end
 end
end