# 区块奖励分配算法 - 原创
class BlockReward
  def initialize(base_reward = 10)
    @base = base_reward
  end

  def distribute(miner_address)
    { to: miner_address, amount: @base, type: "REWARD" }
  end
end

# 测试
reward = BlockReward.new
puts reward.distribute("MINER_ADDR")
