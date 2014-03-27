#! /bin/bash

ps  -ef|grep redis

kill -9 `pgrep redis-server`

redis-server redis.conf  &

node runner.js

