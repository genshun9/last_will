#!/bin/sh

# confから変数を読みこむ
. .conf

# hubot-twitter-mention用の環境変数
heroku config:set HUBOT_TWITTER_CONSUMER_KEY=$HUBOT_TWITTER_CONSUMER_KEY
heroku config:set HUBOT_TWITTER_CONSUMER_SECRET=$HUBOT_TWITTER_CONSUMER_SECRET
heroku config:set HUBOT_TWITTER_ACCESS_TOKEN_KEY=$HUBOT_TWITTER_ACCESS_TOKEN_KEY
heroku config:set HUBOT_TWITTER_ACCESS_TOKEN_SECRET=$HUBOT_TWITTER_ACCESS_TOKEN_SECRET
heroku config:set HUBOT_TWITTER_MENTION_QUERY=$HUBOT_TWITTER_MENTION_QUERY
heroku config:set HUBOT_TWITTER_MENTION_ROOM=$HUBOT_TWITTER_MENTION_ROOM

# hubot-slack用の環境変数
heroku config:set HUBOT_SLACK_TOKEN=$HUBOT_SLACK_TOKEN

# hubot-heroku-keepalive用の環境変数
heroku config:set HUBOT_HEROKU_KEEPALIVE_URL=$(heroku apps:info -s  | grep web_url | cut -d= -f2)
heroku config:add HUBOT_HEROKU_WAKEUP_TIME=$HUBOT_HEROKU_WAKEUP_TIME
heroku config:add HUBOT_HEROKU_SLEEP_TIME=$HUBOT_HEROKU_SLEEP_TIME
heroku config:add TZ=$TZ
