# 使い方

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

# Slack連携

## Slack側の設定

- https://xxxx.slack.com/admin/settings#gatewaysのEnable XMPP gateway (SSL only)をonにする
- https://xxxx.slack.com/account/gatewaysからUser/Passを取得

## ruboty側の設定

- Gemの追加
 - gem "ruboty-slack"
 - bundle installをお忘れなく
- 設定ファイル
```
$cat .env
SLACK_PASSWORD=xxxxx
SLACK_ROOM=xxxxx
SLACK_TEAM=xxxxx
SLACK_USERNAME=h-yamada
```
- 実行
```
#--dotenvオプションで.envを読み込む
$bundle exec ruboty --dotenv
```
