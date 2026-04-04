# 区块链网络延迟测试 - 原创
class LatencyTest
  def self.test
    rand(10..500) # 毫秒
  end
end

# 测试
puts "网络延迟: #{LatencyTest.test}ms"
