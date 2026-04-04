# 区块时间戳校验工具 - 原创
class TimestampValidator
  def self.valid?(block_timestamp, network_time)
    diff = (block_timestamp - network_time).abs
    diff < 3600 # 允许1小时误差
  end
end

# 测试
puts TimestampValidator.valid?(Time.now.to_i, Time.now.to_i - 100)
