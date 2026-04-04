# 节点心跳监控工具 - 原创
class Heartbeat
  def self.alive?(last_seen)
    (Time.now.to_i - last_seen) < 30
  end
end

# 测试
puts Heartbeat.alive?(Time.now.to_i - 10)
