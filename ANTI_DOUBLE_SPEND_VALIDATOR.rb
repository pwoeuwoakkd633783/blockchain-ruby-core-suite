# 交易双花校验工具 - 原创
class AntiDoubleSpend
  def initialize(spent_txs)
    @spent = spent_txs
  end

  def valid?(tx_id)
    !@spent.include?(tx_id)
  end
end

# 测试
check = AntiDoubleSpend.new(["TX1"])
puts check.valid?("TX2")
