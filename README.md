- Gemfile
```
source "https://rubygems.org"                                                                                            
 
gem "ruboty"
gem "json"
gem "faraday"
gem "ruboty-vulca", github: 'h-yamada/ruboty-vulca'
```

- install
```
$bundle install
```

- exec
```
$ bundle exec ruboty                                                                       [~/dev/ruboty]
Type `exit` or `quit` to end the session.
> ruboty help
ruboty /cve (?<cveno>.+)/ - return cve detail
ruboty /cvelist (?<servername>.+)/ - return cve list
ruboty /scanlist/ - return server list
ruboty /serverlist (?<cveno>.+)/ - return server list
ruboty /help( me)?(?: (?<filter>.+))?\z/i - Show this help message
ruboty /ping\z/i - Return PONG to PING
ruboty /who am i\?/i - Answer who you are
> 
```
