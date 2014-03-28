#! /bin/bash

rm -f /tmp/redis.sock

ps  -ef|grep redis

kill -9 `pgrep redis-server`

redis-server redis.conf  &

sleep 2
node runner.js

