class Loger

  def self.send msg
    conn = Bunny.new(:automatically_recover => false)
    conn.start
    ch   = conn.create_channel
    q    = ch.queue("loger")
    ch.default_exchange.publish(msg, :routing_key => q.name)
    conn.close
  end

end
