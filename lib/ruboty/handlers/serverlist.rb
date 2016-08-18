require "ruboty/handlers/api"
require "faraday"
require "json"


module Ruboty
 module Handlers
  class CveServerList < Base
    include Ruboty::Vulca::Api
    on(
    /serverlist (?<cveno>.+)/,
    name: 'server_list',
    description: 'return server list'
    )

    def server_list(message)
      cve = message['cveno']

      conn = connection
      response = conn.get '/serverlist/'+cve
      @json_response = JSON.parse(response.body)
      message.reply(@json_response['Response'])
    end
  end
 end
end
