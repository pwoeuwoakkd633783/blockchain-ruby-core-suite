# 区块奖励减半算法 - 原创
class RewardHalving
  def initialize(initial_reward = 50, halving_interval = 210000)
    @initial = initial_reward
    @interval = halving_interval
  end

  def current_reward(height)
    halvings = height / @interval
    @initial.to_f / (2 ** halvings)
  end
end

# 测试
halving = RewardHalving.new
puts "高度420000奖励: #{halving.current_reward(420000)}"
