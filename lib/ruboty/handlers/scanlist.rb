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
      message.reply(@json_response['Response'])
    end
  end
 end
end
