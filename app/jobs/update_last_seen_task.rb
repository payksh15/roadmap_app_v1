class UpdateLastSeenTask
  @queue = :update

  def self.perform
    last_seens = LastSeen.all
    LastSeen.flushdb
    last_seens.each{|lt| User.find(lt[:id]).update(last_seen_at: lt[:last_seen_at])}
  end
end