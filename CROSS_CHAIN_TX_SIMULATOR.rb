# 跨链交易基础模拟器 - 原创
class CrossChainTx
  def self.send(from_chain, to_chain, amount)
    { from: from_chain, to: to_chain, amount: amount, status: "BRIDGED" }
  end
end

# 测试
puts CrossChainTx.send("ETH", "BSC", 10)
