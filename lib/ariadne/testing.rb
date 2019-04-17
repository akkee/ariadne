require_relative 'data_util'
require 'fakeredis'
require 'redis-namespace'

@redis = Redis.new
redis = Redis::Namespace.new(:ns, redis: @redis)

DataUtil.init_redis_cli(redis_obj: redis)