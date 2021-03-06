require "ruboty/handlers/api"
require "faraday"
require "json"


module Ruboty
 module Handlers
  class CveDetail < Base
    include Ruboty::Vulca::Api
    on(
    /cve (?<cveno>.+)/,
    name: 'cve_detail',
    description: 'return cve detail'
    )

    def cve_detail(message)
      cveno = message['cveno']

      conn = connection
      response = conn.get '/cve/'+cveno
      @json_response = JSON.parse(response.body)
      message.reply(@json_response['Response'])
    end
  end
 end
end
