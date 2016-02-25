class LastSeen

  def self.set_time(id)
    redis.hmset(:last_seen, id, Time.now)
  end

  def self.get_time(id)
    redis.hmget(:last_seen, id).first.try(:to_time)
  end

  def self.all
    redis.hgetall(:last_seen).map { |k, v| {id: k.to_i, last_seen_at: v.to_time} }
  end

  def self.flushdb
    redis.flushdb
  end

  private
    def self.redis
      @redis ||= Redis.new(
                            :host => "localhost",
                            :port => 6379,
                            :db => 5
                          )
    end
end