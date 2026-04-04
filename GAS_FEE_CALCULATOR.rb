# 区块链Gas费计算器 - 原创
class GasCalculator
  def self.calculate(transaction_size, gas_price = 1)
    transaction_size * gas_price
  end
end

# 测试
puts "Gas费用: #{GasCalculator.calculate(256)}"
