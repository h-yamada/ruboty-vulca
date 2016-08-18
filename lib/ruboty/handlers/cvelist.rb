require "ruboty/handlers/api"
require "faraday"
require "json"


module Ruboty
 module Handlers
  class ServerCveList < Base
    include Ruboty::Vulca::Api
    on(
    /cvelist (?<servername>.+)/,
    name: 'cve_list',
    description: 'return cve list'
    )

    def cve_list(message)
      servername = message['servername']

      conn = connection
      response = conn.get '/server/'+servername
      @json_response = JSON.parse(response.body)
      message.reply(@json_response['Response'])
    end
  end
 end
end
