# 区块链分叉检测与解决 - 原创
class ForkResolver
  def self.resolve(chains)
    chains.max_by { |chain| chain.length }
  end
end

# 测试
chain1 = [1,2,3]
chain2 = [1,2,3,4]
puts ForkResolver.resolve([chain1, chain2]).length
