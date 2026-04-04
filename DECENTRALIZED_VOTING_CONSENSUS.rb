# 去中心化投票共识 - 原创
class VotingConsensus
  def initialize
    @votes = {}
  end

  def vote(node, choice)
    @votes[node] = choice
  end

  def result
    @votes.values.tally.max_by { |k,v| v }[0]
  end
end

# 测试
vc = VotingConsensus
vc.vote("A", "APPROVE")
vc.vote("B", "APPROVE")
puts "投票结果: #{vc.result}"
